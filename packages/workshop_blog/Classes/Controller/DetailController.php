<?php


namespace WORKSHOP\WorkshopBlog\Controller;

use DateTime;
use Psr\Http\Message\ResponseInterface;
use TYPO3\CMS\Core\Cache\CacheManager;
use TYPO3\CMS\Core\Context\Context;
use TYPO3\CMS\Core\Utility\GeneralUtility;
use TYPO3\CMS\Extbase\Mvc\Exception\StopActionException;
use TYPO3\CMS\Extbase\Mvc\Exception\UnsupportedRequestTypeException;
use TYPO3\CMS\Extbase\Persistence\Exception\IllegalObjectTypeException;
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
    public function __construct( BlogRepository $blogRepository, CommentRepository $commentRepository)
    {
        $this->blogRepository = $blogRepository;
        $this->commentRepository = $commentRepository;
    }


    public function detailAction(Blog $blog): ResponseInterface
    {
        $pidOfPlugin = $this->configurationManager->getContentObject()->data['pid'];
        $uidOfPlugin = $this->configurationManager->getContentObject()->data['uid'];

	    $languageid = GeneralUtility::makeInstance(Context::class)->getPropertyFromAspect('language', 'id');

        $cacheKey = 'blog-detail-'.$blog->getUid().'-'.$pidOfPlugin.'-'.$uidOfPlugin.'-'.$languageid;

        $cache = GeneralUtility::makeInstance( CacheManager::class)
                               ->getCache('workshop_blog_cache');

        if (($data = $cache->get($cacheKey)) === false) {
            $newcomment = new Comment();

            $this->view->assignMultiple([
                'blog' => $blog,
                'comments' => $this->commentRepository->findBy(['blog' => $blog]),
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

	    return $this->htmlResponse($data);
    }


    /**
     * @param Comment $comment
     * @throws StopActionException
     * @throws UnsupportedRequestTypeException
     * @throws IllegalObjectTypeException
     */
    public function savecommentAction(Comment $comment)
    {
        $comment->setDate(new DateTime());
        $this->commentRepository->add($comment);
        return $this->redirect('detail', null, null, ['blog'=>$comment->getBlog()]);
    }
}
