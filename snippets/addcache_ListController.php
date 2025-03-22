<?php


use TYPO3\CMS\Core\Cache\CacheManager;
use TYPO3\CMS\Core\Utility\GeneralUtility;

$pidOfPlugin = $this->request->getAttribute('currentContentObject')->data['pid'];
$uidOfPlugin = $this->request->getAttribute('currentContentObject')->data['uid'];

$currentPage = 1;
if ($this->request->hasArgument('@widget_0')) {
    $paginateWidget = $this->request->getArgument('@widget_0');
    if (isset($paginateWidget['currentPage'])) {
        $currentPage = $paginateWidget['currentPage'];
    }
}

$cacheKey = 'blog-list-'.$pidOfPlugin.'-'.$uidOfPlugin.'-'.$currentPage;

$cache = GeneralUtility::makeInstance( CacheManager::class)
    ->getCache('workshop_blog_cache');

if (($data = $cache->get($cacheKey)) === false) {

    // do the works

    $data = $this->view->render();
    $tags = ['blog_list_view'];
    $tags[]='pageId_'.$pidOfPlugin; // we can diskus about this
    $cache->set($cacheKey,$data,$tags,0);
}

return $this->htmlResponse($data);
