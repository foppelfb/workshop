<?php


namespace WORKSHOP\WorkshopBlog\Controller;

use Psr\Http\Message\ResponseInterface;
use TYPO3\CMS\Core\Pagination\SimplePagination;
use TYPO3\CMS\Extbase\Mvc\Controller\ActionController;
use TYPO3\CMS\Extbase\Pagination\QueryResultPaginator;
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
    public function __construct( BlogRepository $blogRepository, CommentRepository $commentRepository)
    {
        $this->blogRepository = $blogRepository;
        $this->commentRepository = $commentRepository;
    }

    public function indexAction(): ResponseInterface
    {
		$blogs = $this->blogRepository->findAll();
		$page = $this->request->hasArgument('page') ? $this->request->getArgument('page') : 1;
	    $paginator = new QueryResultPaginator( $blogs, $page, 3);
	    $pagination = new SimplePagination($paginator);

	    $this->view->assignMultiple([
            'blogs'=>$paginator->getPaginatedItems(),
	        'pagination'=> $pagination
        ]);
        return $this->htmlResponse();
    }
}
