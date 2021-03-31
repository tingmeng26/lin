<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <meta name="description" content="林製作所は長年に渡り培った独自の品質基準のもと、小ロットから海外生産を行っています。製品の企画、デザイン、設計、品質管理、生産製造まで一貫して行います。">

  <title>ODM/OEMメーカー　林製作所 | 製品情報</title>

  <script src="styles/jquery.min.js"></script>
  <script src="styles/bootstrap/js/bootstrap.min.js"></script>
  <script src="styles/style.js"></script>
  <link rel="stylesheet" href="styles/bootstrap/css/bootstrap.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <link rel="stylesheet" href="styles/style.css">

</head>

<body>
  @extends('header')
  <div class="headerPage"></div>
  <div id="mycarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators"></ol>
    <!-- 廣告輪播列表 -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <a href="acrylic/index.html" target="_blank">
          <img src="images/banner/products-1.jpg" data-color="#eee">
          <div class="carousel-caption">
            <h1>飛沫感染防止アクリルスクリーン</h1>
            <hr>
            <h3>５㎜厚のアクリル板を使用<br>
              安定性バツグン！</h3>
          </div>
        </a>
      </div>
      <div class="item">
        <a href="#" target="_blank">
          <img src="images/banner/products-2.jpg" data-color="#eee">
          <div class="carousel-caption">
            <h1>ZIP LINK II</h1>
            <hr>
            <h3>簡単組み立てで、<br>
              レイアウトが自由自在！</h3>
          </div>
        </a>
      </div>
    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#mycarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">前</span>
    </a>
    <a class="right carousel-control" href="#mycarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">次</span>
    </a>
  </div>
  <div>
    <div class="container">
      <p>ホーム > 製品情報</p>
    </div>
    <section class="container">

      <div class="text-center">
        <h3>製品情報</h3>
        <h4 class="odm-tittle">Products</h4>
      </div>
      <div class="row">
        @foreach($data as $row)
          <div class="col-md-4 col-sm-6 col-xs-12 cards">
            <div class="whitecard-none">
              <div class="products-top">
                
                <a href="#">
                  <div><img class="products-top-img" src="{{$row['pic']}}"></div>
                  <h4 class="products-top-tittle">{{$row['name']}}</h4>
                </a>
              </div>
              <hr class="green-hr">
              @foreach($row['subtype'] as $value)

                @if(!empty($value['ps_id']))
                  <a href="subtype/{{ $value['ps_id'] }}">
                @endif
                  <h4>{{$value['ps_name_tw']}}</h4>
                @if(!empty($value['ps_id']))
                  </a>
                @endif
              @endforeach
            </div>
          </div>
        @endforeach
      </div>

  </div>

  <div class="footerPage"></div>
  @extends('footer')
</body>

</html>
