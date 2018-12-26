<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<style type="text/css">
@font-face {
	font-family: 'Ferrum';
	src: url('css/k8x12S.ttf') format('truetype');
	font-weight: normal;
	font-style: normal;
}
/********************
loading effects
********************/
.loadingAnim{
    position: fixed;
    z-index: 100;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    display: block;
    width: 100%;
    height: 100%;
    text-align: center;
}
.loadingAnim:before,
.loadingAnim:after{
    line-height: 1;
    position: fixed;
    z-index: 99;
    right: 0;
    left: 0;
    display: block;
    width: 100%;
    height: 50%;
    margin-right: auto;
    margin-left: auto;
    content: ' ';
    transition: all .3s cubic-bezier(.785, .135, .15, .86) 0s;
    transition-delay: .3s;
    background-color: black;

}
.loadingAnim:before{
    top: 0;
}
.loadingAnim:after{
    bottom: 0;
}

.loaded .loadingAnim:before{
    height: 0;
    -webkit-transform: translateY(-1%);
    -ms-transform: translateY(-1%);
    transform: translateY(-1%);
}
.loaded .loadingAnim:after{
    height: 0;
    -webkit-transform: translateY(1%);
    -ms-transform: translateY(1%);
    transform: translateY(1%);
}

.loadingAnim_line{
    line-height: 1;
    position: fixed;
    z-index: 100;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    display: inline-block;
    overflow: hidden;
    width: 100vw;
    height: 2em;
    margin: auto;
    transition: all .2s cubic-bezier(.785, .135, .15, .86) 0s;
    transition-delay: .3s;
    text-align: center;
}
.loadingAnim_line:after{
    position: absolute;
    z-index: 100;
    top: 0;
    bottom: 0;
    left: 0;
    display: block;
    width: 0;
    height: 100%;
    margin: auto  auto auto 0;
    content: ' ';
    -webkit-animation: loadingAnim 2s ease-in-out .1s infinite normal backwards;
    animation: loadingAnim 2s ease-in-out .1s infinite normal backwards;
    background-color: #fff;
    will-change: transform, width;
}
.loadingAnim_line:before{
    font-family: 'Ferrum', serif;
    font-size: 2em;
    font-weight: bold;
    font-style: normal;
    line-height: 1;
    display: block;
    content: 'LOADING';
    -webkit-animation: loadingAnim_text 1s ease .1s infinite alternate both;
    animation: loadingAnim_text 1s ease .1s infinite alternate both;
    letter-spacing: .5em;
    color: #fff;
    will-change: opacity;
}
.loaded .loadingAnim_line{
    overflow: hidden;
    height: 0;
}
.loaded .loadingAnim_line:after,
.loaded .loadingAnim_line:before{
    -webkit-animation: none;
    animation: none;
}
.loaded .loadingAnim_line:before{
 content: 'ALLDICE';
}
/********************
animation setting
********************/
@-webkit-keyframes loadingAnim{
    0%{
        width: 0;
    }
    100%{
        width: 100%;
        -webkit-transform: translate(100%);
        transform: translate(100%);
    }
}
@keyframes loadingAnim{
    0%{
        width: 0;
    }
    100%{
        width: 100%;
        -webkit-transform: translate(100%);
        transform: translate(100%);
    }
}
@-webkit-keyframes loadingAnim_text{
    0%{
        opacity: 1;
        color: #cba166;
    }
    50%{
        color: #333;

    }
    100%{
        opacity: .5;
        color: #fff;
    }
}
@keyframes loadingAnim_text{
    0%{
        opacity: 1;
        color: #cba166;
    }
    50%{
        color: #333;
    }
    100%{
        opacity: .5;
        color: #fff;
    }
}
</style>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script>
/**
* ローディングアニメーション
*/

var $delayTime = 100;

$(window).on('load', function(){
  var $loadingAnim = $('#loadingAnim'),
      $body = $('body');

    setTimeout( function(){

      $body.addClass('loaded');

      $loadingAnim.find('.loadingAnim_line').on('transitionend', function( e ){
        $(this).parent().remove(); }); }, $delayTime );
 });
 </script>
</head>
<body>
<div id="loadingAnim" class="loadingAnim">
<i class="loadingAnim_line"></i>
</div>
</body>
</html>