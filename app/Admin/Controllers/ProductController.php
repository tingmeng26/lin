<?php

namespace App\Admin\Controllers;

use App\Product;
use App\Subtype;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
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

        $grid->column('product_id', __('Product id'));
        // $grid->column('product_ind', __('Product ind'));
        // $grid->column('ps_id', __('Ps id'));
        $grid->column('subtype.ps_name_tw', __('子類別名稱'));
        $grid->column('type.pt_name_tw', __('父類別名稱'));
        // $grid->column('pt_id', __('Pt id'));
        $grid->column('product_tag', __('Product tag'))->using(Config::get('parameter.PRODUCT_SNO'));
        $grid->column('product_sno', __('Product sno'));
        // $grid->column('product_name_jp', __('Product name jp'));
        // $grid->column('product_name_en', __('Product name en'));
        $grid->column('product_name_tw', __('產品名稱'));
        // $grid->column('product_description_jp', __('Product description jp'));
        // $grid->column('product_description_en', __('Product description en'));
        // $grid->column('product_description_tw', __('Product description tw'));
        // $grid->column('product_pics', __('Product pics'));
        // $grid->column('product_pic', __('Product pic'));
        // $grid->column('product_size_jp', __('Product size jp'));
        // $grid->column('product_size_en', __('Product size en'));
        // $grid->column('product_size_tw', __('Product size tw'));
        // $grid->column('product_material_jp', __('Product material jp'));
        // $grid->column('product_material_en', __('Product material en'));
        // $grid->column('product_material_tw', __('Product material tw'));
        // $grid->column('product_heavy_jp', __('Product heavy jp'));
        // $grid->column('product_heavy_en', __('Product heavy en'));
        // $grid->column('product_heavy_tw', __('Product heavy tw'));
        // $grid->column('product_color_jp', __('Product color jp'));
        // $grid->column('product_color_en', __('Product color en'));
        // $grid->column('product_color_tw', __('Product color tw'));
        // $grid->column('product_capacity_jp', __('Product capacity jp'));
        // $grid->column('product_capacity_en', __('Product capacity en'));
        // $grid->column('product_capacity_tw', __('Product capacity tw'));
        // $grid->column('product_comment_jp', __('Product comment jp'));
        // $grid->column('product_comment_en', __('Product comment en'));
        // $grid->column('product_comment_tw', __('Product comment tw'));
        // $grid->column('product_status_jp', __('Product status jp'));
        // $grid->column('product_status_en', __('Product status en'));
        // $grid->column('product_status_tw', __('Product status tw'));
        // $grid->column('product_link', __('Product link'));
        // $grid->column('product_file', __('Product file'));
        // $grid->column('product_content_pic1', __('Product content pic1'));
        // $grid->column('product_content_pic2', __('Product content pic2'));
        // $grid->column('product_content_pic3', __('Product content pic3'));
        // $grid->column('product_content_pic4', __('Product content pic4'));
        // $grid->column('product_content_text1_jp', __('Product content text1 jp'));
        // $grid->column('product_content_text2_jp', __('Product content text2 jp'));
        // $grid->column('product_content_text3_jp', __('Product content text3 jp'));
        // $grid->column('product_content_text4_jp', __('Product content text4 jp'));
        // $grid->column('product_content_text1_en', __('Product content text1 en'));
        // $grid->column('product_content_text2_en', __('Product content text2 en'));
        // $grid->column('product_content_text3_en', __('Product content text3 en'));
        // $grid->column('product_content_text4_en', __('Product content text4 en'));
        // $grid->column('product_content_text1_tw', __('Product content text1 tw'));
        // $grid->column('product_content_text2_tw', __('Product content text2 tw'));
        // $grid->column('product_content_text3_tw', __('Product content text3 tw'));
        // $grid->column('product_content_text4_tw', __('Product content text4 tw'));
        // $grid->column('product_size_pic', __('Product size pic'));
        // $grid->column('product_content_jp', __('Product content jp'));
        // $grid->column('product_content_en', __('Product content en'));
        // $grid->column('product_content_tw', __('Product content tw'));
        $grid->column('product_is_show', __('公開'))->using(Config::get('parameter.IS_PUBLIC'));
        // $grid->column('product_create_time', __('Product create time'));
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
        $show->field('product_name_jp', __('Product name jp'));
        $show->field('product_name_en', __('Product name en'));
        $show->field('product_name_tw', __('Product name tw'));
        $show->field('product_description_jp', __('Product description jp'));
        $show->field('product_description_en', __('Product description en'));
        $show->field('product_description_tw', __('Product description tw'));
        $show->field('product_pics', __('Product pics'));
        $show->field('product_pic', __('Product pic'));
        $show->field('product_size_jp', __('Product size jp'));
        $show->field('product_size_en', __('Product size en'));
        $show->field('product_size_tw', __('Product size tw'));
        $show->field('product_material_jp', __('Product material jp'));
        $show->field('product_material_en', __('Product material en'));
        $show->field('product_material_tw', __('Product material tw'));
        $show->field('product_heavy_jp', __('Product heavy jp'));
        $show->field('product_heavy_en', __('Product heavy en'));
        $show->field('product_heavy_tw', __('Product heavy tw'));
        $show->field('product_color_jp', __('Product color jp'));
        $show->field('product_color_en', __('Product color en'));
        $show->field('product_color_tw', __('Product color tw'));
        $show->field('product_capacity_jp', __('Product capacity jp'));
        $show->field('product_capacity_en', __('Product capacity en'));
        $show->field('product_capacity_tw', __('Product capacity tw'));
        $show->field('product_comment_jp', __('Product comment jp'));
        $show->field('product_comment_en', __('Product comment en'));
        $show->field('product_comment_tw', __('Product comment tw'));
        $show->field('product_status_jp', __('Product status jp'));
        $show->field('product_status_en', __('Product status en'));
        $show->field('product_status_tw', __('Product status tw'));
        $show->field('product_link', __('Product link'));
        $show->field('product_file', __('Product file'));
        $show->field('product_content_pic1', __('Product content pic1'));
        $show->field('product_content_pic2', __('Product content pic2'));
        $show->field('product_content_pic3', __('Product content pic3'));
        $show->field('product_content_pic4', __('Product content pic4'));
        $show->field('product_content_text1_jp', __('Product content text1 jp'));
        $show->field('product_content_text2_jp', __('Product content text2 jp'));
        $show->field('product_content_text3_jp', __('Product content text3 jp'));
        $show->field('product_content_text4_jp', __('Product content text4 jp'));
        $show->field('product_content_text1_en', __('Product content text1 en'));
        $show->field('product_content_text2_en', __('Product content text2 en'));
        $show->field('product_content_text3_en', __('Product content text3 en'));
        $show->field('product_content_text4_en', __('Product content text4 en'));
        $show->field('product_content_text1_tw', __('Product content text1 tw'));
        $show->field('product_content_text2_tw', __('Product content text2 tw'));
        $show->field('product_content_text3_tw', __('Product content text3 tw'));
        $show->field('product_content_text4_tw', __('Product content text4 tw'));
        $show->field('product_size_pic', __('Product size pic'));
        $show->field('product_content_jp', __('Product content jp'));
        $show->field('product_content_en', __('Product content en'));
        $show->field('product_content_tw', __('Product content tw'));
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
            $form->text('product_id', __('ID'))->readonly();
            // $form->number('product_ind', __('Product ind'));
            $array = ['1'=>'1','7'=>'7','15'=>'15'];
            $form->select('ps_id', __('子分類名稱'))->options(Subtype::list());
            $form->number('pt_id', __('Pt id'));
            $form->number('product_tag', __('Product tag'));
            $form->text('product_sno', __('Product sno'));
            // $form->text('product_name_jp', __('Product name jp'));
            // $form->text('product_name_en', __('Product name en'));
            $form->text('product_name_tw', __('Product name tw'));
            // $form->text('product_description_jp', __('Product description jp'));
            // $form->text('product_description_en', __('Product description en'));
            // $form->text('product_description_tw', __('Product description tw'));
            // $form->text('product_pics', __('Product pics'));
            // $form->text('product_pic', __('Product pic'));
            // $form->text('product_size_jp', __('Product size jp'));
            // $form->text('product_size_en', __('Product size en'));
            // $form->text('product_size_tw', __('Product size tw'));
            // $form->text('product_material_jp', __('Product material jp'));
            // $form->text('product_material_en', __('Product material en'));
            // $form->text('product_material_tw', __('Product material tw'));
            // $form->text('product_heavy_jp', __('Product heavy jp'));
            // $form->text('product_heavy_en', __('Product heavy en'));
            // $form->text('product_heavy_tw', __('Product heavy tw'));
            // $form->text('product_color_jp', __('Product color jp'));
            // $form->text('product_color_en', __('Product color en'));
            // $form->text('product_color_tw', __('Product color tw'));
            // $form->text('product_capacity_jp', __('Product capacity jp'));
            // $form->text('product_capacity_en', __('Product capacity en'));
            // $form->text('product_capacity_tw', __('Product capacity tw'));
            // $form->text('product_comment_jp', __('Product comment jp'));
            // $form->text('product_comment_en', __('Product comment en'));
            // $form->text('product_comment_tw', __('Product comment tw'));
            // $form->text('product_status_jp', __('Product status jp'));
            // $form->text('product_status_en', __('Product status en'));
            // $form->text('product_status_tw', __('Product status tw'));
            // $form->text('product_link', __('Product link'));
            // $form->text('product_file', __('Product file'));
            // $form->text('product_content_pic1', __('Product content pic1'));
            // $form->text('product_content_pic2', __('Product content pic2'));
            // $form->text('product_content_pic3', __('Product content pic3'));
            // $form->text('product_content_pic4', __('Product content pic4'));
            // $form->text('product_content_text1_jp', __('Product content text1 jp'));
            // $form->text('product_content_text2_jp', __('Product content text2 jp'));
            // $form->text('product_content_text3_jp', __('Product content text3 jp'));
            // $form->text('product_content_text4_jp', __('Product content text4 jp'));
            // $form->text('product_content_text1_en', __('Product content text1 en'));
            // $form->text('product_content_text2_en', __('Product content text2 en'));
            // $form->text('product_content_text3_en', __('Product content text3 en'));
            // $form->text('product_content_text4_en', __('Product content text4 en'));
            // $form->text('product_content_text1_tw', __('Product content text1 tw'));
            // $form->text('product_content_text2_tw', __('Product content text2 tw'));
            // $form->text('product_content_text3_tw', __('Product content text3 tw'));
            // $form->text('product_content_text4_tw', __('Product content text4 tw'));
            // $form->textarea('product_size_pic', __('Product size pic'));
            // $form->textarea('product_content_jp', __('Product content jp'));
            // $form->textarea('product_content_en', __('Product content en'));
            // $form->textarea('product_content_tw', __('Product content tw'));
            $form->number('product_is_show', __('Product is show'));
            // $form->datetime('product_create_time', __('Product create time'))->default(date('Y-m-d H:i:s'));
            // $form->datetime('product_update_time', __('Product update time'))->default(date('Y-m-d H:i:s'));
            // $form->text('product_admin', __('Product admin'));
        });

        return $form;
    }
}
