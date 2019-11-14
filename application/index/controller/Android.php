<?php
namespace app\index\controller;

use think\Db;
use app\admin\model\TypeModel;
use think\Controller;
class Android extends Controller
{
    public function __construct()
    {
        parent::__construct();
        if(!isMobile()){
            $this->redirect('Index/index/index');
        }
    }
    public function index(){
        echo  11111111;
    }
}