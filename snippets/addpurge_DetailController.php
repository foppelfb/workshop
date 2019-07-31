<?php

// function savecommentAction

$this->commentRepository->add($comment);

$cache = \TYPO3\CMS\Core\Utility\GeneralUtility::makeInstance(\TYPO3\CMS\Core\Cache\CacheManager::class)->getCache('workshop_blog_cache');
$cache->flushByTag('blogId_'.$comment->getBlog()->getUid());
