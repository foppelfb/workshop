<?php

declare(strict_types=1);

use Rector\Config\RectorConfig;
use Rector\PostRector\Rector\NameImportingPostRector;
use Rector\TypeDeclaration\Rector\ClassMethod\AddVoidReturnTypeWhereNoReturnRector;
use Rector\ValueObject\PhpVersion;
use Ssch\TYPO3Rector\CodeQuality\General\ConvertImplicitVariablesToExplicitGlobalsRector;
use Ssch\TYPO3Rector\CodeQuality\General\ExtEmConfRector;
use Ssch\TYPO3Rector\Configuration\Typo3Option;
use Ssch\TYPO3Rector\Set\Typo3LevelSetList;
use Ssch\TYPO3Rector\Set\Typo3SetList;

$dir = __DIR__.'/packages/workshop_blog';

return RectorConfig::configure()
    ->withPaths([
        //$dir . '/Build',
        $dir . '/Classes',
        $dir . '/Configuration',
        //$dir . '/Documentation',
        //$dir . '/Tests',
        $dir . '/ext_emconf.php',
        $dir . '/ext_localconf.php',
        $dir . '/ext_tables.php',
    ])
    // uncomment to reach your current PHP version
    //->withPhpSets()
    ->withPhpVersion(PhpVersion::PHP_83)
    ->withSets([
        Typo3SetList::CODE_QUALITY,
        Typo3SetList::GENERAL,
	    Typo3LevelSetList::UP_TO_TYPO3_12,

        // To migrate to Doctrine Dbal 4, uncomment the following line
        //\Rector\Doctrine\Set\DoctrineSetList::DOCTRINE_DBAL_40,
    ])
    // To have a better analysis from PHPStan, we teach it here some more things
    ->withPHPStanConfigs([Typo3Option::PHPSTAN_FOR_RECTOR_PATH])
    ->withRules([
        AddVoidReturnTypeWhereNoReturnRector::class,
        ConvertImplicitVariablesToExplicitGlobalsRector::class,
    ])
    ->withConfiguredRule(ExtEmConfRector::class, [
        ExtEmConfRector::PHP_VERSION_CONSTRAINT => '8.1.0-8.4.99',
        ExtEmConfRector::TYPO3_VERSION_CONSTRAINT => '13.4.0-12.3.99',
        ExtEmConfRector::ADDITIONAL_VALUES_TO_BE_REMOVED => [],
    ])
    // If you use withImportNames(), you should consider excluding some TYPO3 files.
    ->withSkip([
        // @see https://github.com/sabbelasichon/typo3-rector/issues/2536
        $dir . '/**/Configuration/ExtensionBuilder/*',
        NameImportingPostRector::class => [
            'ext_localconf.php', // This line can be removed since TYPO3 11.4, see https://docs.typo3.org/c/typo3/cms-core/main/en-us/Changelog/11.4/Important-94280-MoveContentsOfExtPhpIntoLocalScopes.html
            'ext_tables.php', // This line can be removed since TYPO3 11.4, see https://docs.typo3.org/c/typo3/cms-core/main/en-us/Changelog/11.4/Important-94280-MoveContentsOfExtPhpIntoLocalScopes.html
            'ClassAliasMap.php',
        ]
    ])
;
