var myIndex = 0;

setInterval(myMove3,3000);
function myMove3(){
setTimeout(myMove,1000);
setTimeout(myMove1,2000);
}
function myMove() {
  var elem = document.getElementById("im");   
  var hei = 80;
  var wid = 180;
  var id = setInterval(frame, 10);
  function frame() {
    if ((wid == 210)&&(hei == 110)) {
      clearInterval(id);
    } else {
      wid++;
      hei++;
      elem.style.width = wid + 'px'; 
      elem.style.height = hei + 'px'; 
    }
  }
}
function myMove1() {
  var elem = document.getElementById("im");   
  var hei = 110;
  var wid = 210;
  var id = setInterval(frame, 10);
  function frame() {
    if ((wid == 180)&&(hei == 80)) {
      clearInterval(id);
    } else {
      wid--;
      hei--;
      elem.style.width = wid + 'px'; 
      elem.style.height = hei + 'px'; 
    }
  }
}
