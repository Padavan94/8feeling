/*
 Third party
 */
//= ../../bower_components/Swiper/dist/js/swiper.js
//= ../../bower_components/imagesloaded/imagesloaded.pkgd.js

/*
    Custom
 */
//= partials/owl.carousel.js
//= partials/jquery.magnific-popup.min.js
//= partials/mousewheel.js
//= partials/parallax.js
//= partials/masonry.js




var app = {

	initMasonry: function(){
		var $grid = $('.collection-grid').imagesLoaded( function() {
		  $grid.masonry({
		    itemSelector: '.collection-grid__item',
		    percentPosition: true,
		    columnWidth: '.collection-grid__sizer'
		  }); 
		});

	},
	initInstagram: function(){
		var mySwiper = new Swiper('.instagram-section__slider', {
		    speed: 400,
		    loop: true,
		    mousewheelControl: true,
		    slidesPerView: 8,
		    spaceBetween: 0,

		}); 
	},
	initProductSlider1: function(){
		var mySwiper = new Swiper('.product-single__img__top-slider', {
		    speed: 400,
		    slidesPerView: 1,
		    spaceBetween: 0,
		    nextButton: '.product-single__img__top-slider__next',
        	prevButton: '.product-single__img__top-slider__prev',
        	effect: 'fade'

		}); 
	},

	initProductSlider2: function(){
		var mySwiper = new Swiper('.product-single__img__bottom-slider', {
		    speed: 400,
		    loop: true,
		    mousewheelControl: true,
		    slidesPerView: 4,
		    spaceBetween: 15,
		}); 

	},
	addToCart: function(){
		$(".product-single__add a").click(function(event) {
			event.preventDefault();
			var self = $(this);
			
			self.addClass('added');
			var interval = setInterval(function(){
				clearInterval(interval);
				self.removeClass("added");
			}, 500);

		});
	},

	removeProduct: function(){
		$(".cart__table__body-col--delete").click(function(event) {
			var that = $(this).parent();
			that.addClass("remove");
			setInterval(function(){that.remove()},300);
		});
	},

	showLogin: function() {
		var magnificPopup = $.magnificPopup.instance;
		
		$('.open-popup').magnificPopup({
		  type:'inline',
		  midClick: true,
		  showCloseBtn: false
		});

		$('.popup__close').click(function(event) {
			magnificPopup.close();
		});
	},


	initApp: function(){
		app.initInstagram();
		app.initMasonry();
		app.initProductSlider1();
		app.initProductSlider2();
		app.addToCart();
		app.removeProduct();
		app.showLogin();
	}
}

$(document).ready(function() {
	app.initApp();
});

