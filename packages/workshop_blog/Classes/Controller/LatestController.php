<?php


namespace WORKSHOP\WorkshopBlog\Controller;

use Psr\Http\Message\ResponseInterface;
use TYPO3\CMS\Core\Context\Context;
use TYPO3\CMS\Core\Utility\GeneralUtility;
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
    public function __construct( BlogRepository $blogRepository, CommentRepository $commentRepository)
    {
        $this->blogRepository = $blogRepository;
        $this->commentRepository = $commentRepository;
    }

    public function indexAction(): ResponseInterface
    {

        $pidOfPlugin = $this->configurationManager->getContentObject()->data['pid'];
        $uidOfPlugin = $this->configurationManager->getContentObject()->data['uid'];
	    $languageid = GeneralUtility::makeInstance(Context::class)->getPropertyFromAspect('language', 'id');
        $cacheKey = 'blog-latest-'.$pidOfPlugin.'-'.$uidOfPlugin.'-'.$languageid;

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

	    return $this->htmlResponse($data);
    }
}
