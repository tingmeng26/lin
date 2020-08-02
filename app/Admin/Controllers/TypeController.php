<?php

namespace App\Admin\Controllers;

use App\Subtype;
use App\Type;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Facades\Auth;

class TypeController extends AdminController
{
  /**
   * Title for current resource.
   *
   * @var string
   */
  protected $title = 'Type';

  /**
   * Make a grid builder.
   *
   * @return Grid
   */
  protected function grid()
  {
    $grid = new Grid(new Type());
    $grid->column('pt_id', 'Id')->sortable();
    $grid->column('pt_name_en', __('名稱 en'));
    $grid->column('pt_name_tw', __('名稱 tw'));
    $grid->column('pt_name_jp', __('名稱 jp'));
    $grid->column('pt_ispublic', __('公開'))->using(['0' => '否', '1' => '是']);
    $grid->column('subtype', '子分類數量')->display(function ($subtype) {
      $count = count($subtype);
      return "<span class='label label-warning'>{$count}</span>";
    });
    // $grid->column('pt_ind', __('Pt ind'));
    $grid->column('pt_pic', __('Pt pic'));
    $grid->column('pt_admin', __('管理者'));
    $grid->column('pt_updatetime', __('最後修改時間'));
    $grid->column('pt_createtime', __('建立時間'));


    $grid->filter(function ($filter) {
      $filter->equal('pt_ispublic', '公開')->select(['1' => '是', '0' => '否']);
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
    $show = new Show(Type::findOrFail($id));
    $show->field('pt_id', __('Pt id'));
    $show->field('pt_name_en', __('Pt name en'));
    $show->field('pt_name_tw', __('Pt name tw'));
    $show->field('pt_name_jp', __('Pt name jp'));
    $show->field('pt_ispublic', __('Pt ispublic'));
    $show->field('pt_ind', __('Pt ind'));
    $show->field('pt_pic', __('Pt pic'));
    $show->field('pt_admin', __('Pt admin'));
    $show->field('pt_updatetime', __('Pt updatetime'));
    $show->field('pt_createtime', __('Pt createtime'));

    return $show;
  }

  /**
   * Make a form builder.
   *
   * @return Form
   */
  protected function form()
  {
    $form = new Form(new Type());

    $form->tab('Basic columns', function ($form) {
      $form->text('pt_name_en', __('Pt name en'));
      $form->text('pt_name_tw', __('Pt name tw'));
      $form->text('pt_name_jp', __('Pt name jp'));
      $ispublic = [
        '1' => '是',
        '0' => '否'
      ];
      $form->select('pt_ispublic', '公開')->options($ispublic)->default('1');
      $form->image('pt_pic', '圖片')
        ->uniqueName()
        //   ->name(function ($file) {
        //     return 'test.'.$file->guessExtension();
        // })
        ->removable()
        ->move('upload/test/')
        ->help('Photo縮圖尺寸:100 * 100')
        ->rules('image')
        ->thumbnail('small', $width = 100, $height = 100);
    });
    // $form->number('pt_ispublic', __('Pt ispublic'))->default(1);
    // $form->number('pt_ind', __('Pt ind'));
    // $form->text('pt_pic', __('Pt pic'));
    // $form->text('pt_admin', __('Pt admin'));
    // $form->datetime('pt_updatetime', __('Pt updatetime'))->default(date('Y-m-d H:i:s'));
    // $form->datetime('pt_createtime', __('Pt createtime'))->default(date('Y-m-d H:i:s'));

    // $form->hidden('pt_ind')->default(Type::getMaxInd());
    // $form->hidden('pt_updatetime')->value(date('Y-m-d H:i:s'));
    // $form->hidden('pt_createtime')->default(date('Y-m-d H:i:s'));
    // $form->hidden('pt_admin')->default(Auth::user());

    $form->tab('Hidden columns', function ($form) {

      $form->text('pt_ind')->default(Type::getMaxInd());
      $form->text('pt_updatetime')->value(date('Y-m-d H:i:s'));
      $form->text('pt_createtime')->default(date('Y-m-d H:i:s'));
      $form->text('pt_admin')->default(Auth::user());
    });
    return $form;
  }
}
