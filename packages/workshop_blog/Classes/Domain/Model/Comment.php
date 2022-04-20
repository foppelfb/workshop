<?php


namespace WORKSHOP\WorkshopBlog\Domain\Model;

use DateTime;
use TYPO3\CMS\Extbase\DomainObject\AbstractEntity;
use function strip_tags;

class Comment extends AbstractEntity
{
    
    protected int $tstamp = 0;

    protected string $commentor = '';
    
    protected string $comment = '';
    
    /**
     * @var DateTime
     */
    protected $date;
    
    protected Blog $blog;
    
    public function getCommentor(): string
    {
        return $this->commentor;
    }
    
    /**
     * @param string $commentor
     */
    public function setCommentor(string $commentor): void
    {
        $this->commentor = strip_tags( $commentor);
    }
    
    public function getComment(): string
    {
        return $this->comment;
    }
    
    /**
     * @param string $comment
     */
    public function setComment(string $comment): void
    {
        $this->comment = strip_tags( $comment);
    }
    
    public function getBlog(): Blog
    {
        return $this->blog;
    }
    
    /**
     * @param Blog $blog
     */
    public function setBlog(Blog $blog): void
    {
        $this->blog = $blog;
    }
    
    /**
     * @return DateTime
     */
    public function getDate(): DateTime
    {
        return $this->date;
    }
    

    /**
     * @param DateTime $date
     */
    public function setDate( DateTime $date): void
    {
        $this->date = $date;
    }
    
    /**
     * @return int
     */
    public function getTstamp(): int
    {
        return $this->tstamp;
    }
    
    /**
     * @param int $tstamp
     */
    public function setTstamp(int $tstamp): void
    {
        $this->tstamp = $tstamp;
    }
}
