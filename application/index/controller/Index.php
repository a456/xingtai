<?php
namespace app\index\controller;

use think\Db;
use app\admin\model\TypeModel;
use think\Controller;
class Index extends Controller
{
    public function __construct()
    {
        parent::__construct();
        if(isMobile()){
            $this->redirect('Index/mobile/index');
        }
    }
    public $carousel_limit = '';
    public function index()
    {
        $field = 'id,title,alt,edit_time,url,content,type,classlist,detail_map,click';
        $article_list = Db::name('article_list')->where(['status'=>1,'classlist'=>1])->field($field)->order('sort asc')->limit(8)->select();//推荐回收
        $class_ification = Db::name('article_list')->where(['status'=>1,'classlist'=>2])->field($field)->order('sort asc')->limit(50)->select();//分类回收
//        $latest_recycling = Db::name('article_list')->where(['status'=>1,'classlist'=>3])->field($field)->order('edit_time desc')->limit(5)->select();//最新回收
//        $popular = Db::name('article_list')->where(['status'=>1,'classlist'=>4])->field($field)->order('click desc')->limit(5)->select();//热门回收
        $TypeModel = new TypeModel;
        $this->assign([
            'type' => 1,
            'article_list' => $article_list,
            'class_ification' => $class_ification,
//            'latest_recycling' => $latest_recycling,
//            'popular' => $popular,
            'navigation' => $TypeModel->navigation(),
            'classification' => $TypeModel->classification(),
        ]);
        return $this->fetch();
    }

    public function classlist(){
        $type = intval(input('type','1'));
        if($type){
            $carousel_find = Db::name('carousel_map')->where(['status'=>1,'type'=>$type])->field('id,title,url,alt')->order('sort asc, id desc')->find();//轮播图
            $article_find = Db::name('article_list')->where(['status'=>1,'type'=>$type])->field('id,title,alt,edit_time,url')->order('id desc')->select();//列表
            if(empty($article_find) && empty($carousel_find)){
                errer_jump();
            }
            $TypeModel = new TypeModel;
            $this->assign([
                'carousel_find'=>$carousel_find,
                'article_find'=>$article_find,
                'navigation'=>$TypeModel->navigation()[$type],
            ]);
            return $this->fetch();
        }
        errer_jump();
    }
    public function details(){
        $id = intval(input('id','25'));
        if($id){
            $order = 'id desc';
            $field = 'id,title,alt,edit_time,url,content,type,classlist,detail_map,click';
            $article_find = Db::name('article_list')->where(['status'=>1,'id'=>$id])->field($field)->find();//推荐回收
//            $latest = Db::name('article_list')->where(['status'=>1,'type'=>$article_find['type'],'classlist'=>3])->field($field)->order($order)->select();//最新回收
//            $hottest = Db::name('article_list')->where(['status'=>1,'type'=>$article_find['type'],'classlist'=>4])->field($field)->order($order)->select();//最热回收
            if(empty($article_find)){
                errer_jump();
            }
            $TypeModel = new TypeModel;
            $this->assign([
                'article_find'=>$article_find,
//                'latest'=>$latest,
//                'hottest'=>$hottest,
                'navigation' => $TypeModel->navigation(),
                'classification'=>$TypeModel->classification(),
            ]);
            return $this->fetch();
        }
        errer_jump();
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


}
