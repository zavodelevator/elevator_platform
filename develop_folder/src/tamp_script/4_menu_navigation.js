// menu navigation

var indecator_opening = false;
var count_openes = 0;                   // прапорець індикатор що показує відкрите чи закрите меню ()///
var windows_width = $(window).width();



	

document.getElementById('position_button_menu').onclick = function () {                         //фенккція відкритт та закриття меню ()///
	
	
console.log("hiiii");
	if (indecator_opening===false)               //Якщо меню закрите то ми робимо це ()///
		{
			$(".button_menu").css("display", "block");            // Ховаэмо кнопку выдкриття меню ()///
			$(".close_button_menu").css('display', 'none'); // показуэмо кнопку закриття меню()///
			$(".open_menu_navigation").css("right", "-600px");

	

			if(count_openes==0)
					{
						$(".menu_navigation").addClass("open_menu_navigation"); // додяэмо клас з цсс властивостями до елементу меню що його відкрити()///
						$(".open_menu_navigation").css("right", "-600px");
					}
			indecator_opening = true; //записуємо що меню відкрите ()///

			count_openes++; // flag whot show what menu was in do

		}
		else //меню відкрите()///
			{
				$(".open_menu_navigation").css("right", "0px");  //видаляемо клас відкритого меню скриваємо меню()///
				$(".button_menu").css("display", "none"); //показуємо кнопку відкриття меню ()///
				$(".close_button_menu").css('display', 'block');//ховаємо кнопку приховання меню()///
				
			
				indecator_opening = false;//пишемо що меню закрите()///
			}
};

function adaptat (){
	if (windows_width<1126) {	
		$(".button_menu").css("display", "block");            // Ховаэмо кнопку выдкриття меню ()///
		$(".close_button_menu").css('display', 'none'); // показуэмо кнопку закриття меню()///
		$(".menu_navigation").addClass("open_menu_navigation"); // додяэмо клас з цсс властивостями до елементу меню що його відкрити()///
		$(".open_menu_navigation").css("right", "-600px");
		count_openes++;
		indecator_opening = true; 

	}
}

adaptat();


for(var li of tree.querySelektorAll('li')){
	var span = document.createElement('span');
	span.classList.add(show);
	li.preperend(span);
	span.append(span.nextSibling);
}
  
  
// tree.onclick = function (event){
// 	console
// }