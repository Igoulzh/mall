;(function(){


  //获取样式
  function getStyle(el,property){
    if(getComputedStyle){
      return getComputedStyle(el)[property]
    }else{
      return el.currentStyle[property]
    }
  }

  function animate(el,properties,time){
    clearInterval(el.timerId);
    el.timerId = setInterval(function(){
      for (var property in properties) {
        var current;
        var target = properties[property];
        if(property === 'opacity'){
          target *= 100;
          current = Math.round(parseFloat(getStyle(el,'opacity')) * 100);
        }else{
          current = parseInt(getStyle(el,property));
        }
        var speed = (target - current)/30;
        speed = speed > 0 ? Math.ceil(speed) : Math.floor(speed);
        if(property === 'opacity'){
          el.style.opacity = (current + speed) / 100;
        }else{
          el.style[property] = current + speed + "px";
        }
      }
    },time)
  }


  var currentIndex;
  var lis;
  var liWidth;
  var len;
  var id;
  init();
  function init(){
    currentIndex = 1;
    var li_1 = document.querySelector('.slider .list .item:first-of-type');
    var copy_1 = li_1.cloneNode(true);
    var li_last = document.querySelector('.slider .list .item:last-of-type');
    var copy_last = li_last.cloneNode(true);

    var list = document.querySelector('.slider .list');
    list.appendChild(copy_1);
    list.insertBefore(copy_last,li_1);

    lis = document.querySelectorAll('.list .item');

    len = lis.length;
    document.querySelector('.slider').style.width = document.body.clientWidth * 0.7;
    for (var i = 0; i < lis.length; i++) {
      lis[i].style.width = document.body.clientWidth * 0.7;
    }
    liWidth = lis[0].offsetWidth;
    list.style.width = liWidth * len + 1 + 'px';
    list.style.left = -liWidth + 'px';
    document.querySelector('.prev').onclick = function(){
      slidePrev();
    }
    document.querySelector('.next').onclick = function(){
      slideNext();
    }
    document.querySelector('.slider').onmouseover = function(){
      stop();
    }
    document.querySelector('.slider').onmouseout = function(){
      auto();
    }
    auto();
  }
  function slideNext(){
    currentIndex++;
    slideTo(currentIndex);
  }
  function slidePrev(){
    currentIndex--;
    slideTo(currentIndex);
  }
  function slideTo(index){
    var list = document.querySelector('.slider .list');

    if(index === len){
      currentIndex = index = 2;
      list.style.left = -liWidth + 'px';
    }
    if(index === -1){
      currentIndex = index = len - 3;
      list.style.left = -(len - 2) * liWidth + 'px';
    }

    var left = -index * liWidth;
    animate(list,{left:left},10);
  }
  function auto(){
    clearInterval(id);
    id = setInterval(function(){
      slideNext()
    },4000)
  }
  function stop(){
    clearInterval(id);
  }

})()
;(function(){
  window.onload = function () {
    h1.style.right = 400 + 'px';
    h2.style.left = 400 + 'px';
  }
  var h1 = document.getElementById("h1_1");
  var h2 = document.getElementById("h1_2");
  $(window).scroll(function(){
    if($(window).scrollTop()>$(h1).offset().top-$(window).height() + 100){
    	h1.style.right = 0;
    }
    if($(window).scrollTop()>$(h2).offset().top-$(window).height() + 100){
    	h2.style.left = 0;
    }
   });
})()
