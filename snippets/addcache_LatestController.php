<?php


use TYPO3\CMS\Core\Cache\CacheManager;
use TYPO3\CMS\Core\Utility\GeneralUtility;

$pidOfPlugin = $this->request->getAttribute('currentContentObject')->data['pid'];
$uidOfPlugin = $this->request->getAttribute('currentContentObject')->data['uid'];
$cacheKey    = 'blog-latest-'.$pidOfPlugin.'-'.$uidOfPlugin;

$cache = GeneralUtility::makeInstance( CacheManager::class)
    ->getCache('workshop_blog_cache');

if (($data = $cache->get($cacheKey)) === false) {



    // the works

    $data = $this->view->render();

	$tags = ['blog_latest_view'];
	$tags[]='pageId_'.$pidOfPlugin; // we can diskus about this
    $cache->set($cacheKey,$data,$tags,0);
}

return $this->htmlResponse($data);
