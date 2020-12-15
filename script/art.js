function change(pic) {
  pic.src="dep/redHeart.png";
}

let heart = document.getElementById('heart');
  heart.addEventListener('click',()=>{
      if(heart.classList.contains('red')){
          heart.classList.remove('red');
          heart.classList.add('white');
          heart.src = 'dep/whiteHeart.png';
      }else{
          heart.classList.remove('white');
          heart.classList.add('red');
          heart.src = 'dep/redHeart.png';
      }
  });
