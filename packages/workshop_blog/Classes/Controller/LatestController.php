<?php


namespace WORKSHOP\WorkshopBlog\Controller;

use TYPO3\CMS\Extbase\Mvc\Controller\ActionController;
use WORKSHOP\WorkshopBlog\Domain\Repository\BlogRepository;
use WORKSHOP\WorkshopBlog\Domain\Repository\CommentRepository;

class LatestController extends ActionController
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
    
    public function indexAction()
    {
        $pidOfPlugin = $this->configurationManager->getContentObject()->data['pid'];
        $uidOfPlugin = $this->configurationManager->getContentObject()->data['uid'];
        $cacheKey = 'blog-latest-'.$pidOfPlugin.'-'.$uidOfPlugin;
    
        $cache = \TYPO3\CMS\Core\Utility\GeneralUtility::makeInstance(\TYPO3\CMS\Core\Cache\CacheManager::class)
            ->getCache('workshop_blog_cache');
    
        if (($data = $cache->get($cacheKey)) === false) {
            
            $this->view->assignMultiple([
                'blogs'=>$this->blogRepository->findAll()->getQuery()->setLimit(3)->execute(),
            ]);
            
            $data = $this->view->render();
            $tags = ['blog_latest_view'];
            $tags[]='pageId_'.$pidOfPlugin; // we can diskus about this
            $cache->set($cacheKey,$data,$tags,0);
        }
    
        return $data;
    }
}
