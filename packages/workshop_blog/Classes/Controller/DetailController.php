<?php


namespace WORKSHOP\WorkshopBlog\Controller;

use TYPO3\CMS\Extbase\Mvc\Controller\ActionController;
use WORKSHOP\WorkshopBlog\Domain\Model\Blog;
use WORKSHOP\WorkshopBlog\Domain\Model\Comment;
use WORKSHOP\WorkshopBlog\Domain\Repository\BlogRepository;
use WORKSHOP\WorkshopBlog\Domain\Repository\CommentRepository;

class DetailController extends ActionController
{
    /**
     * @var BlogRepository
     *
     */
    protected $blogRepository;
    
    
    /**
     * @var CommentRepository
     *
     */
    protected $commentRepository;
    
    public function injectBlogRepository(BlogRepository $blogRepository)
    {
        $this->blogRepository = $blogRepository;
    }
    
    public function injectCommentRepository(CommentRepository $commentRepository)
    {
        $this->commentRepository = $commentRepository;
    }
    
    
    public function detailAction(Blog $blog)
    {
        $pidOfPlugin = $this->configurationManager->getContentObject()->data['pid'];
        $uidOfPlugin = $this->configurationManager->getContentObject()->data['uid'];
    
        $cacheKey = 'blog-detail-'.$blog->getUid().'-'.$pidOfPlugin.'-'.$uidOfPlugin;
    
        $cache = \TYPO3\CMS\Core\Utility\GeneralUtility::makeInstance(\TYPO3\CMS\Core\Cache\CacheManager::class)
            ->getCache('workshop_blog_cache');
    
        if (($data = $cache->get($cacheKey)) === false) {
            $newcomment = new Comment();
    
            $this->view->assignMultiple([
                'blog' => $blog,
                'comments' => $this->commentRepository->findByBlog($blog),
                'newcomment' => $newcomment,
            ]);
            // below
    
            $data = $this->view->render();
    
            $tags = [
                'pageId_' . $pidOfPlugin,
                'blogId_' . $blog->getUid()
            ];
    
            $cache->set($cacheKey, $data, $tags, 0);
        }
        return $data;
    }
    
    
    /**
     * @param Comment $comment
     * @throws \TYPO3\CMS\Extbase\Mvc\Exception\StopActionException
     * @throws \TYPO3\CMS\Extbase\Mvc\Exception\UnsupportedRequestTypeException
     * @throws \TYPO3\CMS\Extbase\Persistence\Exception\IllegalObjectTypeException
     */
    public function savecommentAction(Comment $comment)
    {
        $comment->setDate(new \DateTime());
        $comment->setComment(\strip_tags($comment->getComment()));
        $comment->setCommentor(\strip_tags($comment->getCommentor()));
      
        $this->commentRepository->add($comment);
        $this->redirect('detail', null, null, ['blog'=>$comment->getBlog()]);
    }
}
