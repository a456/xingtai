<?php
namespace app\index\controller;

use think\Db;
use app\admin\model\TypeModel;

class Android extends Jump
{
    public function __construct()
    {
        parent::__construct();
    }

    public $carousel_limit = '';
    public function index()
    {
    }
}