<?php


namespace WORKSHOP\WorkshopBlog\Controller;

use TYPO3\CMS\Extbase\Mvc\Controller\ActionController;
use WORKSHOP\WorkshopBlog\Domain\Repository\BlogRepository;
use WORKSHOP\WorkshopBlog\Domain\Repository\CommentRepository;

class ListController extends ActionController
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
    
        $currentPage = 1;
        if ($this->request->hasArgument('@widget_0')) {
            $paginateWidget = $this->request->getArgument('@widget_0');
            if (isset($paginateWidget['currentPage'])) {
                $currentPage = $paginateWidget['currentPage'];
            }
        }
    
        $cacheKey = 'blog-list-'.$pidOfPlugin.'-'.$uidOfPlugin.'-'.$currentPage;
    
        $cache = \TYPO3\CMS\Core\Utility\GeneralUtility::makeInstance(\TYPO3\CMS\Core\Cache\CacheManager::class)
            ->getCache('workshop_blog_cache');
    
        if (($data = $cache->get($cacheKey)) === false) {
            
            $this->view->assignMultiple([
                'blogs'=>$this->blogRepository->findAll(),
            ]);
    
            $data = $this->view->render();
            $tags = ['blog_list_view'];
            $tags[]='pageId_'.$pidOfPlugin; // we can diskus about this
            $cache->set($cacheKey,$data,$tags,0);
        }
    
        return $data;
    
    }
}
