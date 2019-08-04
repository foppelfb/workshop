<?php


namespace WORKSHOP\WorkshopBlog;


use TYPO3\CMS\Backend\Utility\BackendUtility;
use TYPO3\CMS\Core\Cache\CacheManager;
use TYPO3\CMS\Core\Database\ConnectionPool;
use TYPO3\CMS\Core\DataHandling\DataHandler;
use TYPO3\CMS\Core\Utility\GeneralUtility;

class Datamap
{
    /**
     * @var object|CacheManager
     */
    protected $cacheManager;
    
    public function __construct()
    {
        $this->cacheManager = GeneralUtility::makeInstance(CacheManager::class)->getCache('workshop_blog_cache');
    }
    
    public function processCmdmap($command, $table, $id, $value, $commandIsProcessed, DataHandler $pObj, $pasteUpdate)
    {
        if ( $command === 'delete' || $command === 'move') {
            $this->clearMyCache($table,$id,$command);
        }
        
    }
    
    public function processDatamap_afterDatabaseOperations($status, $table, $id, &$fieldArray, DataHandler $pObj)
    {
        $this->clearMyCache($table,$id,$status);
    }
    
    private function clearMyCache($table,$id,$status) {
        if ($table==='tx_workshopblog_domain_model_blog') {
            $this->cacheManager->flushByTags([
                'blogId_' . $id,
                'blog_latest_view',
                'blog_list_view'
            ]);
        }
        if ($table==='tx_workshopblog_domain_model_comment') {
            if ($status !== 'new') {
                $record = BackendUtility::getRecord($table, $id);
                $this->cacheManager->flushByTag('blogId_' . $record['blog']);
            }
        }
    }
}
