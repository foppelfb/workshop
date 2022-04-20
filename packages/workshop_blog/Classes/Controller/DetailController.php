<?php


namespace WORKSHOP\WorkshopBlog\Controller;

use DateTime;
use Psr\Http\Message\ResponseInterface;
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
    
    public function injectBlogRepository(BlogRepository $blogRepository): void
    {
        $this->blogRepository = $blogRepository;
    }
    
    public function injectCommentRepository(CommentRepository $commentRepository): void
    {
        $this->commentRepository = $commentRepository;
    }
    
    
    public function detailAction(Blog $blog): ResponseInterface
    {
        $newcomment = new Comment();
        
        $this->view->assignMultiple([
           'blog'=>$blog,
           'comments'=>$this->commentRepository->findByBlog($blog),
           'newcomment'=>$newcomment,
        ]);
        return $this->htmlResponse();
    }
    
    
    /**
     * @param Comment $comment
     * @throws StopActionException
     * @throws UnsupportedRequestTypeException
     * @throws IllegalObjectTypeException
     */
    public function savecommentAction(Comment $comment): void
    {
        $comment->setDate(new DateTime());
        $this->commentRepository->add($comment);
        $this->redirect('detail', null, null, ['blog'=>$comment->getBlog()]);
    }
}
