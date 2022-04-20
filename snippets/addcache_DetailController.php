<?php


//above


$pidOfPlugin = $this->configurationManager->getContentObject()->data['pid'];
$uidOfPlugin = $this->configurationManager->getContentObject()->data['uid'];

$languageid = \TYPO3\CMS\Core\Utility\GeneralUtility::makeInstance( \TYPO3\CMS\Core\Context\Context::class)->getPropertyFromAspect('language', 'id');

$cacheKey = 'blog-detail-'.$blog->getUid().'-'.$pidOfPlugin.'-'.$uidOfPlugin.'-'.$languageid;

$cache = \TYPO3\CMS\Core\Utility\GeneralUtility::makeInstance( \TYPO3\CMS\Core\Cache\CacheManager::class)
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
