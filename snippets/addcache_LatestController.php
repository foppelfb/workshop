<?php


$pidOfPlugin = $this->configurationManager->getContentObject()->data['pid'];
$uidOfPlugin = $this->configurationManager->getContentObject()->data['uid'];
$cacheKey = 'blog-latest-'.$pidOfPlugin.'-'.$uidOfPlugin;

$cache = \TYPO3\CMS\Core\Utility\GeneralUtility::makeInstance(\TYPO3\CMS\Core\Cache\CacheManager::class)
    ->getCache('workshop_blog_cache');

if (($data = $cache->get($cacheKey)) === false) {
    
    
    
    // the works
    
    $data = $this->view->render();
    
    $tags = ['blog_latest_view'];
    $tags[]='pageId_'.$pidOfPlugin; // we can diskus about this
    $cache->set($cacheKey,$data,$tags,0);
}

return $data;
