<?php


namespace WORKSHOP\WorkshopBlog\Domain\Repository;


use TYPO3\CMS\Extbase\Persistence\Repository;

class BlogRepository extends Repository
{
    protected $defaultOrderings = array(
        'date' => \TYPO3\CMS\Extbase\Persistence\QueryInterface::ORDER_DESCENDING
    );
    
}
