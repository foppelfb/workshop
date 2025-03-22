<?php


return [
    'ctrl' => [
        'label' => 'commentor',
        'tstamp' => 'tstamp',
        'crdate' => 'crdate',
        'delete' => 'deleted',
        'default_sortby' => 'date DESC',
        'adminOnly' => false,
        'rootLevel' => 0,
        'iconfile' => 'EXT:workshop_blog/Resources/Public/Icons/Extension.svg',
        'enablecolumns' => [
            'disabled' => 'hidden'
        ],
        'title' => 'Comment',
        'searchFields' => 'hidden,date,commentor,comment,blog'
    ],
    'palettes' => [],
    'types' => [
        1 => [
            'showitem' => 'hidden,date,commentor,comment,blog'
        ]
    ],
    'columns' => [
        'tstamp' => [
            'config' => [
                'type' => 'passthrough',
            ],
        ],
        'hidden' => [
            'exclude' => true,
            'label' => 'Visible',
            'config' => [
                'type' => 'check',
                'renderType' => 'checkboxToggle',
                'default' => 1,
                'items' => [
                    [
                        'label' => '',
                        'invertStateDisplay' => true
                    ]
                ],
            ]
        ],
        'commentor' => [
            'label' => 'Commentor',
            'config' => [
                'type' => 'input'
            ]
        ],
        'date' => [
            'label' => 'Date',
            'config' => [
                'type' => 'datetime'
            ]
        ],

        'comment' => [
            'label' => 'Comment',
            'config' => [
                'type' => 'text'
            ]
        ],
        
        'blog'=> [
            'label' => 'Blog',
            'config' => [
                'type' => 'group',
                'allowed' => 'tx_workshopblog_domain_model_blog',
                'foreign_table'=> 'tx_workshopblog_domain_model_blog',
                'minitems'=>1,
                'maxitems'=>1,
            ]
        ]
    ]
];
