<?php


namespace WORKSHOP\WorkshopBlog\Domain\Model;

use DateTime;
use TYPO3\CMS\Extbase\DomainObject\AbstractEntity;

class Blog extends AbstractEntity
{
    
    protected int $tstamp = 0;
    
    protected string $title = '';
    
    /**
     * @var DateTime
     */
    protected $date;
    
    protected string $teaser = '';
    
    protected string $bodytext = '';

    /**
     * @return ?string
     */
    public function getTitle(): ?string
    {
        return $this->title;
    }
    
    /**
     * @param string $title
     */
    public function setTitle(string $title): void
    {
        $this->title = $title;
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
     * @return string
     */
    public function getTeaser(): string
    {
        return $this->teaser;
    }
    
    /**
     * @param string $teaser
     */
    public function setTeaser(string $teaser): void
    {
        $this->teaser = $teaser;
    }
    
    /**
     * @return string
     */
    public function getBodytext(): string
    {
        return $this->bodytext;
    }
    
    /**
     * @param string $bodytext
     */
    public function setBodytext(string $bodytext): void
    {
        $this->bodytext = $bodytext;
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
