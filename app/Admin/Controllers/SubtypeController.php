<?php

namespace App\Admin\Controllers;

use App\Subtype;
use App\Type;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\DB;
use Symfony\Component\HttpFoundation\Request;

class SubtypeController extends AdminController
{
  /**
   * Title for current resource.
   *
   * @var string
   */
  protected $title = '小分類';

  /**
   * Make a grid builder.
   *
   * @return Grid
   */
  protected function grid()
  {
    $grid = new Grid(new Subtype());
    $grid->model()->orderBy('ps_id', 'desc');
    $grid->column('ps_id', __('ID'))->sortable();
    // $grid->column('pt_id', __('Pt id'));
    $grid->column('ps_name', __('名稱'));
    $grid->column('type.pt_name', __('大分類名稱'));
    $grid->column('ps_ispublic', '公開')->using(Config::get('parameter.IS_PUBLIC'));
    // $grid->column('ps_ind', __('Ps ind'));
    // $grid->column('ps_link', __('連結'));
    $grid->column('ps_admin', __('最後管理者'));
    $grid->column('ps_updatetime', __('最後修改時間'))->date('Y-m-d H:i:s');
    $grid->column('ps_createtime', __('建立時間'))->date('Y-m-d H:i:s');;

    $grid->actions(function ($actions) {

      // 去掉删除
      // $actions->disableDelete();

      // 去掉编辑
      // $actions->disableEdit();

      // 去掉查看
      $actions->disableView();
    });
    return $grid;
  }

  /**
   * Make a show builder.
   *
   * @param mixed $id
   * @return Show
   */
  protected function detail($id)
  {
    $show = new Show(Subtype::findOrFail($id));

    $show->field('ps_id', __('Ps id'));
    $show->field('pt_id', __('Pt id'));
    $show->field('ps_name', __('Ps name en'));
    $show->field('ps_ispublic', __('Ps ispublic'));
    $show->field('ps_admin', __('Ps admin'));
    $show->field('ps_updatetime', __('Ps updatetime'));
    $show->field('ps_createtime', __('Ps createtime'));

    return $show;
  }

  /**
   * Make a form builder.
   *
   * @return Form
   */
  protected function form()
  {
    $form = new Form(new Subtype());
    $form->tab('Basic columns', function ($form) {
      $form->select('pt_id', __('主分類名稱'))->options(Type::list());
      $form->text('ps_name', __('子分類名稱'));
      $form->select('ps_ispublic', __('公開'))->options(Config::get('parameter.IS_PUBLIC'))->default(1);
      // $form->text('ps_admin', __('Ps admin'));
      // $form->datetime('ps_updatetime', __('Ps updatetime'))->default(date('Y-m-d H:i:s'));
      // $form->datetime('ps_createtime', __('Ps createtime'))->default(date('Y-m-d H:i:s'));
    });

    $form->tab('Hidden columns', function ($form) {

      $form->text('ps_ind')->default(Subtype::getMaxInd());
      $form->text('ps_updatetime')->value(date('Y-m-d H:i:s'));
      $form->text('ps_createtime')->default(date('Y-m-d H:i:s'));
      $form->text('ps_admin')->default(Auth::user());
    });
    return $form;
  }


  public static function getListByTypeId(Request $request)
  {
    $id = $request->get('q') ?? 0;
    $list = Subtype::where('pt_id', $id)->get(['ps_id as id', 'ps_name as text']);
    return $list;
  }
}
