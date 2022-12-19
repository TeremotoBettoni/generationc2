const openIcon = document.getElementById('toggle');
const sideBar = document.getElementById('side-nav');


openIcon.addEventListener('click', () =>{
  if(sideBar.classList != 'active') {
    sideBar.classList.add('active');
  } else {
    sideBar.classList.remove('active');
  }
});




