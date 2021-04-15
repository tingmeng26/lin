<?php

namespace App\Admin\Controllers;

use App\Product;
use App\Subtype;
use App\Type;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Config;

class ProductController extends AdminController
{
  /**
   * Title for current resource.
   *
   * @var string
   */
  protected $title = 'Product';

  /**
   * Make a grid builder.
   *
   * @return Grid
   */
  protected function grid()
  {
    $grid = new Grid(new Product());
    $grid->model()->orderBy('product_id','desc');
    $grid->column('product_id', __('Product id'));
    $grid->column('subtype.ps_name', __('大類別名稱'));
    $grid->column('type.pt_name', __('小類別名稱'));
    $grid->column('product_tag', __('標籤'))->using(Config::get('parameter.PRODUCT_SNO'));
    $grid->column('product_sno', __('料號'));
    $grid->column('product_name', __('產品名稱'));
    $grid->column('product_pic', '列表圖片')->display(function($pic){
      $path = env('APP_URL').'/storage/'.$pic;
      return "<image style='width:100px;height:100px' src='{$path}'>";
    });
    $grid->column('product_is_show', __('公開'))->using(Config::get('parameter.IS_PUBLIC'));
    $grid->column('product_update_time', __('最後修改時間'));
    $grid->column('product_admin', __('管理者'));

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
    $show = new Show(Product::findOrFail($id));

    $show->field('product_id', __('Product id'));
    $show->field('product_ind', __('Product ind'));
    $show->field('ps_id', __('Ps id'));
    $show->field('pt_id', __('Pt id'));
    $show->field('product_tag', __('Product tag'));
    $show->field('product_sno', __('Product sno'));
    $show->field('product_name', __('Product name'));
    $show->field('product_description', __('Product description'));
    $show->field('product_pics', __('Product pics'));
    $show->field('product_pic', __('Product pic'));
    $show->field('product_material', __('Product material'));
    $show->field('product_heavy', __('Product heavy'));
    $show->field('product_color', __('Product color'));
    $show->field('product_capacity', __('Product capacity'));
    $show->field('product_comment', __('Product comment'));
    $show->field('product_status', __('Product status'));
    $show->field('product_link', __('Product link'));
    $show->field('product_file', __('Product file'));
    $show->field('product_content_pic1', __('Product content pic1'));
    $show->field('product_content_pic2', __('Product content pic2'));
    $show->field('product_content_pic3', __('Product content pic3'));
    $show->field('product_content_pic4', __('Product content pic4'));
    $show->field('product_content_text1', __('Product content text1'));
    $show->field('product_content_text2', __('Product content text2'));
    $show->field('product_content_text3', __('Product content text3'));
    $show->field('product_content_text4', __('Product content text4'));
    $show->field('product_size_pic', __('Product size pic'));
    $show->field('product_content', __('Product content'));
    $show->field('product_is_show', __('Product is show'));
    $show->field('product_create_time', __('Product create time'));
    $show->field('product_update_time', __('Product update time'));
    $show->field('product_admin', __('Product admin'));

    return $show;
  }

  /**
   * Make a form builder.
   *
   * @return Form
   */
  protected function form()
  {
    $form = new Form(new Product());
    $form->tab('Basic columns', function ($form) {
      $form->select('pt_id', __('大分類名稱'))->options(Type::list())->load('ps_id',env('APP_URL').'/admin/products/lists')->required();
      $form->select('ps_id', __('小分類名稱'))->options(Subtype::list())->required();
      $form->select('product_tag', __('tag'))->options(Config::get('parameter.PRODUCT_SNO'))->required();;
      $form->text('product_sno', __('料號'))->required()->creationRules(['required',"unique:products"])->updateRules(['required', "unique:products,product_sno,{{id}}"]);
      $form->text('product_name', __('產品名稱'))->required();
      $form->select('product_is_show', '公開')->options(Config::get('parameter.IS_PUBLIC'))->default('1');
      $form->text('product_description', __('產品描述'))->required();
      $form->image('product_pic', '列表圖片')
        ->uniqueName()
        ->removable()
        ->move('product')
        ->help('Photo縮圖尺寸:100 * 100')
        ->rules('image')
        ->thumbnail('small', $width = 100, $height = 100)->required();
      $form->image('product_pics', '產品圖片')
        ->uniqueName()
        ->removable()
        ->move('product')
        ->help('Photo縮圖尺寸:100 * 100')
        ->rules('image')
        ->thumbnail('small', $width = 100, $height = 100)->required();

      $form->text('product_size', __('產品尺寸'));
      $form->text('product_heavy', __('產品重量'));
      $form->text('product_color', __('產品顏色'));
      $form->text('product_capacity', __('產品容量'));
      $form->text('product_comment', __('備考'));
      $form->text('product_status', __('產品狀態'));
    });
    $form->tab('Hidden columns', function ($form) {

      $form->text('product_ind')->default(Product::getMaxInd());
      $form->text('product_update_time')->value(date('Y-m-d H:i:s'));
      $form->text('product_create_time')->default(date('Y-m-d H:i:s'));
      $form->text('product_admin')->default(Auth::guard('admin')->user()->username);
    });
    return $form;
  }
}
