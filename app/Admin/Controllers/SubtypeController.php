<?php

namespace App\Admin\Controllers;

use App\Subtype;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Facades\Config;

class SubtypeController extends AdminController
{
  /**
   * Title for current resource.
   *
   * @var string
   */
  protected $title = 'Subtype';

  /**
   * Make a grid builder.
   *
   * @return Grid
   */
  protected function grid()
  {
    $grid = new Grid(new Subtype());

    $grid->column('ps_id', __('ID'))->sortable();
    // $grid->column('pt_id', __('Pt id'));
    $grid->column('ps_name_en', __('名稱 en'));
    $grid->column('ps_name_tw', __('名稱 tw'));
    $grid->column('ps_name_jp', __('名稱 jp'));
    $grid->column('type.pt_name_tw', __('父項名稱'));
    $grid->column('ps_ispublic', __('Ps ispublic'))->using(Config::get('parameter.IS_PUBLIC'));
    // $grid->column('ps_ind', __('Ps ind'));
    $grid->column('ps_link', __('連結'));
    $grid->column('ps_admin', __('管理者'));
    $grid->column('ps_updatetime', __('最後修改時間'));
    $grid->column('ps_createtime', __('建立時間'));

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
    $show->field('ps_name_en', __('Ps name en'));
    $show->field('ps_name_tw', __('Ps name tw'));
    $show->field('ps_name_jp', __('Ps name jp'));
    $show->field('ps_ispublic', __('Ps ispublic'));
    $show->field('ps_ind', __('Ps ind'));
    $show->field('ps_link', __('Ps link'));
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

    $form->number('pt_id', __('Pt id'));
    $form->text('ps_name_en', __('Ps name en'));
    $form->text('ps_name_tw', __('Ps name tw'));
    $form->text('ps_name_jp', __('Ps name jp'));
    $form->number('ps_ispublic', __('Ps ispublic'))->default(1);
    $form->number('ps_ind', __('Ps ind'));
    $form->text('ps_link', __('Ps link'));
    $form->text('ps_admin', __('Ps admin'));
    $form->datetime('ps_updatetime', __('Ps updatetime'))->default(date('Y-m-d H:i:s'));
    $form->datetime('ps_createtime', __('Ps createtime'))->default(date('Y-m-d H:i:s'));

    return $form;
  }
}
