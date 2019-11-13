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
namespace app\admin\validate;

use think\Validate;

class PersonalValidate extends Validate
{
    protected $rule = [
        ['title', 'require', '标题不能为空'],
        ['alt', 'require', '关键词不能为空'],
        ['copyright', 'require', '版权不能为空'],
        ['address', 'require', '公司地址信息不能为空'],
        ['icon', 'require', '请选择图标'],
        ['left_img', 'require', '请选择右浮动广告'],
        ['right_img', 'require', '请选择左浮动广告'],
        ['process', 'require', '回收流程不能为空'],
        ['onwe', 'require', '关于我们不能为空'],
        ['contact', 'require', '联系我们不能为空'],
        ['hotline', 'require', '回收热线不能为空'],
    ];

}