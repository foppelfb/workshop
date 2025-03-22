<?php


//above


use TYPO3\CMS\Core\Context\Context;
use TYPO3\CMS\Core\Utility\GeneralUtility;

$pidOfPlugin = $this->request->getAttribute('currentContentObject')->data['pid'];
$uidOfPlugin = $this->request->getAttribute('currentContentObject')->data['uid'];


$languageid = GeneralUtility::makeInstance(Context::class)->getPropertyFromAspect('language', 'id');

$cacheKey = 'blog-detail-'.$blog->getUid().'-'.$pidOfPlugin.'-'.$uidOfPlugin.'-'.$languageid;

$cache = GeneralUtility::makeInstance( CacheManager::class)
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

return $this->htmlResponse($data);
