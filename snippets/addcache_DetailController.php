<?php


//above

$pidOfPlugin = $this->configurationManager->getContentObject()->data['pid'];
$uidOfPlugin = $this->configurationManager->getContentObject()->data['uid'];

$cacheKey = 'blog-detail-'.$blog->getUid().'-'.$pidOfPlugin.'-'.$uidOfPlugin;

$cache = \TYPO3\CMS\Core\Utility\GeneralUtility::makeInstance(\TYPO3\CMS\Core\Cache\CacheManager::class)
    ->getCache('workshop_blog_cache');

if (($data = $cache->get($cacheKey)) === false) {
    
    
    
    // below
    
    $data = $this->view->render();
    
    $tags = [
        'pageId_'.$pidOfPlugin,
        'blogId_'.$blog->getUid()
    ];
    
    $cache->set($cacheKey,$data,$tags,0);
}

return $data;
