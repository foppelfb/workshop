<?php

if (!defined('TYPO3_MODE')) {
    die();
}

\TYPO3\CMS\Extbase\Utility\ExtensionUtility::configurePlugin(
    'WORKSHOP.WorkshopBlog',
    'List',
    [
        'List' => 'index',
    ],
    [
        'List' => 'index',
    ],
    \TYPO3\CMS\Extbase\Utility\ExtensionUtility::PLUGIN_TYPE_PLUGIN
);
\TYPO3\CMS\Extbase\Utility\ExtensionUtility::configurePlugin(
    'WORKSHOP.WorkshopBlog',
    'Latest',
    [
        'Latest'=>'index',
    ],
    [
        'Latest'=>'index',
    ],
    \TYPO3\CMS\Extbase\Utility\ExtensionUtility::PLUGIN_TYPE_PLUGIN
);
\TYPO3\CMS\Extbase\Utility\ExtensionUtility::configurePlugin(
    'WORKSHOP.WorkshopBlog',
    'Detail',
    [

        'Detail'=>'detail,savecomment'
    ],
    [

        'Detail'=>'detail,savecomment'
    ],
    \TYPO3\CMS\Extbase\Utility\ExtensionUtility::PLUGIN_TYPE_PLUGIN
);

if (!is_array($GLOBALS['TYPO3_CONF_VARS']['SYS']['caching']['cacheConfigurations']['workshop_blog_cache'])) {
    $GLOBALS['TYPO3_CONF_VARS']['SYS']['caching']['cacheConfigurations']['workshop_blog_cache'] = [
        'backend'=>\TYPO3\CMS\Core\Cache\Backend\Typo3DatabaseBackend::class,
        // 'backend'=>\TYPO3\CMS\Core\Cache\Backend\NullBackend::class, //to disable caching
        'frontend'=>\TYPO3\CMS\Core\Cache\Frontend\VariableFrontend::class,
        'groups'=>['all'],
        'options'=>[
            'defaultLifetime'=>0,
        ]
    ];
}
