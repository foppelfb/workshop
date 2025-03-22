<?php


namespace WORKSHOP\WorkshopBlog\Controller;

use Psr\Http\Message\ResponseInterface;
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
        $this->view->assignMultiple([
            'blogs'=>$this->blogRepository->findAll()->getQuery()->setLimit(3)->execute(),
        ]);
        return $this->htmlResponse();
    }
}
