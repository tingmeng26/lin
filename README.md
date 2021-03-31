
## 環境
<div title="PHP version"><img src="https://img.shields.io/badge/php-%3E=_7.2.14-green.svg"></div>
<div title="Lavavel version"><img src="https://img.shields.io/badge/laravel framework-%3E=_7.0-green.svg"></div>
<div title="Mysql version"><img src="https://img.shields.io/badge/Mysql-%3E=_5.7-green.svg"></div>
<div title="Composer version"><img src="https://img.shields.io/badge/Composer-%3E=_1.10.9-green.svg"></div>

## 安裝
```
cd api
複製 _example.env 改名為.env 並設定相關參數
composer install
對應 env 裡 DATABASE建立資料表 本例中命名為hayashi20

php artisan vendor:publish --provider="Encore\Admin\AdminServiceProvider"

php artisan admin:install
```