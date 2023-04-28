// 모든 드롭다운 메뉴에 대해 마우스 이벤트 리스너 추가
var dropdowns = document.querySelectorAll('nav ul li.dropdown');

dropdowns.forEach(function(dropdown) {
  dropdown.addEventListener('mouseleave', function() {
    this.querySelector('ul.dropdown-content').style.display = 'none';
  });

  dropdown.addEventListener('mouseenter', function() {
    this.querySelector('ul.dropdown-content').style.display = 'block';
  });
});
