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
    //    'List' => 'index',
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
      //  'Latest'=>'index',
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

       // 'Detail'=>'detail,savecomment'
    ],
    \TYPO3\CMS\Extbase\Utility\ExtensionUtility::PLUGIN_TYPE_PLUGIN
);
