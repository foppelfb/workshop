<?php

use TYPO3\CMS\Core\Utility\ExtensionManagementUtility;
use TYPO3\CMS\Extbase\Utility\ExtensionUtility;

call_user_func(function (): void {
    ExtensionUtility::registerPlugin(
        'WorkshopBlog',
        'List',
        'Workshop Blog List',
        'EXT:workshop_blog/Resources/Public/Icons/Extension.svg'
    );
    ExtensionUtility::registerPlugin(
        'WorkshopBlog',
        'Latest',
        'Workshop Blog Latest',
        'EXT:workshop_blog/Resources/Public/Icons/Extension.svg'
    );
    ExtensionUtility::registerPlugin(
        'WorkshopBlog',
        'Detail',
        'Workshop Blog Detail',
        'EXT:workshop_blog/Resources/Public/Icons/Extension.svg'
    );
    
    $GLOBALS['TCA']['tt_content']['types']['list']['subtypes_addlist']['workshopblog_list'] = 'pi_flexform';
    ExtensionManagementUtility::addPiFlexFormValue('workshopblog_list', 'FILE:EXT:workshop_blog/Configuration/Flexforms/Flexform.xml');
    
    $GLOBALS['TCA']['tt_content']['types']['list']['subtypes_addlist']['workshopblog_latest'] = 'pi_flexform';
    ExtensionManagementUtility::addPiFlexFormValue('workshopblog_latest', 'FILE:EXT:workshop_blog/Configuration/Flexforms/Flexform.xml');
});
