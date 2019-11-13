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
namespace app\admin\controller;
use app\admin\model\AdminModel;
use app\admin\model\TypeModel;
class Home extends Base
{
    protected $name_carousel = 'carousel_map';
    protected $name_second_hand = 'article_list';
    protected $personal = 'personal';
    //轮播图列表
    public function index_carousel()
    {
        if(request()->isAjax()){
            $param = input('param.');

            $limit = $param['pageSize'];
            $offset = ($param['pageNumber'] - 1) * $limit;

            $where = [];
            if (!empty($param['searchText'])) {
                $where['title'] = ['like', '%' . $param['searchText'] . '%'];
            }

            $article = new AdminModel(['table'=>$this->name_carousel,'order'=>'sort asc,id desc']);
            $selectResult = $article->getList($where, $offset, $limit);

            $TypeModel = new TypeModel;
            foreach($selectResult as $key=>$vo){
                $selectResult[$key]['type'] = $TypeModel->navigation()[$selectResult[$key]['type']];
                $selectResult[$key]['url'] = '<img src="' . $vo['url'] . '" width="40px" height="40px">';
                $selectResult[$key]['status'] = empty($vo['status']) ? '否':'是';
                $selectResult[$key]['operate'] = showOperate($article->makeButton(['id'=>$vo['id'],'edit_url'=>'home/carousel_edit']));
            }

            $return['total'] = $article->getListCount($where);  // 总数据
            $return['rows'] = $selectResult;

            return json($return);
        }

        return $this->fetch();
    }

    // 添加轮播图
    public function carousel_add()
    {
        if(request()->isPost()){
            $param = input('post.');
            unset($param['file']);
            $param = filter_trim($param);//过滤trim
            $param['edit_time'] = $param['add_time'] = time();//过滤trim
            $article = new AdminModel(['table'=>$this->name_carousel,'validate'=>'HomeValidate','url'=>'home/index_carousel']);
            $flag = $article->addList($param);
            return json(msg($flag['code'], $flag['data'], $flag['msg']));
        }
        $TypeModel = new TypeModel;
        $this->assign([
            'navigation' => $TypeModel->navigation()
        ]);
        return $this->fetch();
    }

    //修改轮播图
    public function carousel_edit()
    {
        $article = new AdminModel(['table'=>$this->name_carousel,'validate'=>'HomeValidate','url'=>'home/index_carousel']);
        if(request()->isPost()){
            $param = input('post.');
            unset($param['file']);
            $param = filter_trim($param);//过滤trim
            $param['edit_time'] = time();//过滤trim
            $flag = $article->editList($param);
            return json(msg($flag['code'], $flag['data'], $flag['msg']));
        }

        $id = input('param.id');
        $TypeModel = new TypeModel;
        $this->assign([
            'navigation' => $TypeModel->navigation(),
            'carousel' => $article->getListId($id)
        ]);
        return $this->fetch();
    }

    //详情
    public function second_hand(){
        if(request()->isAjax()){
            $param = input('param.');

            $limit = $param['pageSize'];
            $offset = ($param['pageNumber'] - 1) * $limit;

            $where = [];
            if (!empty($param['title'])) {
                $where['title'] = ['like', '%' . $param['searchText'] . '%'];
            }

            $article = new AdminModel(['table'=>$this->name_second_hand,'order'=>'id desc']);
            $selectResult = $article->getList($where, $offset, $limit);
            $TypeModel = new TypeModel;
            foreach($selectResult as $key=>$vo){
                $selectResult[$key]['type'] = $TypeModel->navigation()[$selectResult[$key]['type']];
                $selectResult[$key]['classlist'] = $TypeModel->classification()[$selectResult[$key]['classlist']];
                $selectResult[$key]['url'] = '<img src="' . $vo['url'] . '" width="40px" height="40px">';
                $selectResult[$key]['detail_map'] = '<img src="' . $vo['detail_map'] . '" width="40px" height="40px">';
                $selectResult[$key]['status'] = empty($vo['status']) ? '否':'是';
                $selectResult[$key]['operate'] = showOperate($article->makeButton(['id'=>$vo['id'],'edit_url'=>'home/second_hand_edit']));
            }

            $return['total'] = $article->getListCount($where);  // 总数据
            $return['rows'] = $selectResult;

            return json($return);
        }

        return $this->fetch();
    }

    // 添加详情
    public function second_hand_add()
    {
        if(request()->isPost()){
            $param = input('post.');
            unset($param['file']);
            $param = filter_trim($param);//过滤trim
            $param['edit_time'] = $param['add_time'] = time();//过滤trim
            $article = new AdminModel(['table'=>$this->name_second_hand,'validate'=>'SecondValidate','url'=>'home/second_hand']);
            $flag = $article->addList($param);
            return json(msg($flag['code'], $flag['data'], $flag['msg']));
        }
        if(input('param.type','1')){
            $this->assign(['type' => input('param.type','1')]);
        }
        $TypeModel = new TypeModel;
        $this->assign([
            'navigation' => $TypeModel->navigation(),
            'classification' => $TypeModel->classification()
        ]);
        return $this->fetch();
    }


    //修改详情
    public function second_hand_edit()
    {
        $article = new AdminModel(['table'=>$this->name_second_hand,'validate'=>'SecondValidate','url'=>'home/second_hand']);
        if(request()->isPost()){
            $param = input('post.');
            unset($param['file']);
            $param = filter_trim($param);//过滤trim
            $param['edit_time'] = time();//过滤trim
            $flag = $article->editList($param);
            return json(msg($flag['code'], $flag['data'], $flag['msg']));
        }

        $id = input('param.id');
        $TypeModel = new TypeModel;
        $this->assign([
            'navigation' => $TypeModel->navigation(),
            'classification' => $TypeModel->classification(),
            'second' => $article->getListId($id)
        ]);
        return $this->fetch();
    }

    //个人基础信息
    public function personal(){
        $article = new AdminModel(['table'=>$this->personal,'validate'=>'PersonalValidate','url'=>'home/personal']);
        if(request()->isPost()){
            $param = input('post.');
            unset($param['file']);
            $param = filter_trim($param);//过滤trim
            $flag = $article->editList($param);
            return json(msg($flag['code'], $flag['data'], $flag['msg']));
        }

        $this->assign([
            'second' => $article->getListId(1)
        ]);
        return $this->fetch();
    }

}
