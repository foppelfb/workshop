<?php

use TYPO3\CMS\Extbase\Utility\ExtensionUtility;
use WORKSHOP\WorkshopBlog\Controller\DetailController;
use WORKSHOP\WorkshopBlog\Controller\LatestController;
use WORKSHOP\WorkshopBlog\Controller\ListController;

if (!defined('TYPO3')) {
    die();
}

ExtensionUtility::configurePlugin(
    'WorkshopBlog',
    'List',
    [
        ListController::class => 'index',
    ],
    [
	    ListController::class => 'index',
    ],
	ExtensionUtility::PLUGIN_TYPE_PLUGIN
);
ExtensionUtility::configurePlugin(
    'WorkshopBlog',
    'Latest',
    [
	    LatestController::class=>'index',
    ],
    [
        LatestController::class =>'index',
    ],
	ExtensionUtility::PLUGIN_TYPE_PLUGIN
);
ExtensionUtility::configurePlugin(
    'WorkshopBlog',
    'Detail',
    [
	    DetailController::class=>'detail,savecomment'
    ],
    [
	    DetailController::class=>'detail,savecomment'
    ],
    ExtensionUtility::PLUGIN_TYPE_PLUGIN
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
