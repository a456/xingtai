<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------
// $Id$
return [

    // 模板参数替换
    'view_replace_str'       => array(
        '__CSS__'    => '/static/home/pc/css',
        '__JS__'     => '/static/home/pc/js',
        '__IMG__' => '/static/home/pc/images',
        '__CSSM__' => '/static/home/mobile/css',
        '__JSM__' => '/static/home/mobile/js',
        '__IMGM__' => '/static/home/mobile/images',
        '__PLUGM__' => '/static/home/mobile/plug',
    ),

    // 多库测试
    'local' => [
        // 数据库类型
        'type'        => 'mysql',
        // 服务器地址
        'hostname'    => '127.0.0.1',
        // 数据库名
        'database'    => 'test',
        // 数据库用户名
        'username'    => 'root',
        // 数据库密码
        'password'    => 'root',
        // 数据库编码默认采用utf8
        'charset'     => 'utf8',
        // 数据库表前缀
        'prefix'      => '',
    ],
];
