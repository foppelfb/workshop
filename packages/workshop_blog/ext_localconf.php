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
