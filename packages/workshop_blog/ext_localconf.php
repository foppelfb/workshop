<?php

if (!defined('TYPO3')) {
	die();
}

\TYPO3\CMS\Extbase\Utility\ExtensionUtility::configurePlugin(
	'WorkshopBlog',
	'List',
	[
		\WORKSHOP\WorkshopBlog\Controller\ListController::class => 'index',
	],
	[
		\WORKSHOP\WorkshopBlog\Controller\ListController::class => 'index',
	],
	\TYPO3\CMS\Extbase\Utility\ExtensionUtility::PLUGIN_TYPE_PLUGIN
);
\TYPO3\CMS\Extbase\Utility\ExtensionUtility::configurePlugin(
	'WorkshopBlog',
	'Latest',
	[
		\WORKSHOP\WorkshopBlog\Controller\LatestController::class=>'index',
	],
	[
		\WORKSHOP\WorkshopBlog\Controller\LatestController::class =>'index',
	],
	\TYPO3\CMS\Extbase\Utility\ExtensionUtility::PLUGIN_TYPE_PLUGIN
);
\TYPO3\CMS\Extbase\Utility\ExtensionUtility::configurePlugin(
	'WorkshopBlog',
	'Detail',
	[
		\WORKSHOP\WorkshopBlog\Controller\DetailController::class=>'detail,savecomment'
	],
	[
		\WORKSHOP\WorkshopBlog\Controller\DetailController::class=>'detail,savecomment'
	],
	\TYPO3\CMS\Extbase\Utility\ExtensionUtility::PLUGIN_TYPE_PLUGIN
);

if (!is_array($GLOBALS['TYPO3_CONF_VARS']['SYS']['caching']['cacheConfigurations']['workshop_blog_cache'])) {
    $GLOBALS['TYPO3_CONF_VARS']['SYS']['caching']['cacheConfigurations']['workshop_blog_cache'] = [
        'backend'=>\TYPO3\CMS\Core\Cache\Backend\Typo3DatabaseBackend::class,
        // 'backend'=>\TYPO3\CMS\Core\Cache\Backend\NullBackend::class, //to disable caching
        'frontend'=>\TYPO3\CMS\Core\Cache\Frontend\VariableFrontend::class,
        //'groups'=>['pages'],
        'options'=>[
            'defaultLifetime'=>0,
        ]
    ];
}
