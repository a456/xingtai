<?php
// +----------------------------------------------------------------------
// | snake
// +----------------------------------------------------------------------
// | Copyright (c) 2016~2022 http://baiyf.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: NickBai <1902822973@qq.com>
// +----------------------------------------------------------------------
namespace app\admin\model;

use think\Model;

class TypeModel extends Model
{
    public function navigation_bar(){
        return array(
            'index' => '首页',
            'process' => '回收流程',
            'onwe' => '关于我们',
            'contactwe' => '联系我们'
        );
    }

    public function navigation(){
        return array(
            1 => '办公家私',
            2 => '空调回收',
            3 => '电脑回收',
            4 => '酒店设备'
        );
    }

    public function classification(){
        return array(
            1 => '推荐回收',
            2 => '回收项目',
            3 => '最新回收',
            4 => '热门回收'
        );
    }
}