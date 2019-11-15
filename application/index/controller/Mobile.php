<?php
namespace app\index\controller;

use think\Db;
use app\admin\model\TypeModel;
use think\Controller;

class Mobile extends Controller
{
    public function __construct()
    {
        parent::__construct();
        if(!isMobile()){
            $this->redirect('Index/index/index');
        }
    }
    public function index(){
        $field = 'id,title,alt,edit_time,url,content,type,classlist,detail_map,click';
        $class_ification = Db::name('article_list')->where(['status'=>1,'classlist'=>2])->field($field)->order('sort asc')->limit(20)->select();//分类回收
        $TypeModel = new TypeModel;
        $this->assign([
            'class_ification' => $class_ification,
            'navigation' => $TypeModel->navigation(),
        ]);
        return $this->fetch();
    }


    //回收流程
    public function process(){
        return $this->fetch();
    }
    //关于我们
    public function onwe(){
        return $this->fetch();
    }
    //联系我们
    public function contactwe(){
        return $this->fetch();
    }

    //填写用户信息
    public function userinfo(){
        $phone = ltrim(input('post.phone'));
        if(!is_int($phone)){
            if(preg_match("/^1[345678]{1}\d{9}$/",$phone)){
                if (!db('user_info')->where(['phone'=>$phone])->count()){
                    db('user_info')->insert(['phone'=>$phone,'add_time'=>time(),'ip'=>get_client_ip()]);
                }
                $this->success('提交成功,稍后电话联系您！！！');
            }
        }
        $this->error('请重新提交');
    }

}