<?php

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
