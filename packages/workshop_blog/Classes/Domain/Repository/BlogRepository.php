<?php


namespace WORKSHOP\WorkshopBlog\Domain\Repository;

use TYPO3\CMS\Extbase\Persistence\QueryInterface;
use TYPO3\CMS\Extbase\Persistence\Repository;

class BlogRepository extends Repository
{
    /**
     * @var array<string, string>
     */
    protected $defaultOrderings = array(
        'date' => QueryInterface::ORDER_DESCENDING
    );
}
