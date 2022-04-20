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
        'List' => 'index',
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
        'Latest'=>'index',
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

        'Detail'=>'detail,savecomment'
    ],
    ExtensionUtility::PLUGIN_TYPE_PLUGIN
);
