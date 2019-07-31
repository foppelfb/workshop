<?php


$cacheKey = '';

$cache = \TYPO3\CMS\Core\Utility\GeneralUtility::makeInstance(\TYPO3\CMS\Core\Cache\CacheManager::class)
    ->getCache('workshop_blog_cache');

if (($data = $cache->get($cacheKey)) === false) {


    $tags = [
        'pageId_'.$pid,
        'blogId_'.$blogid
    ];
    $cache->set($cacheKey,$data,$tags,0);
}

return $data;
