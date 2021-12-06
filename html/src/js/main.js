$(document).ready(function() {

    // header
    $('.menu').on('click', function(){
        $(this).toggleClass('opened');
        $('header').toggleClass('opened');
    });
    $('.menu-item-has-children').on('click', function(){
        $(this).find('ul').toggleClass('active');
    });

    // search
    $('.search-block .fa-search').on('click', function(){
        $(this).parent().toggleClass('opened');
    });
    $('.search-block .fa-times').on('click', function(){
        $(this).parent().removeClass('opened');
    });

    //FAQ
    $('.faq-block li').on('click', function(){
        $(this).toggleClass('opened');
    });

    // header scrolling
    $(window).scroll(function () {
        var $this = $(this),
            $head = $('header');
        if ($this.scrollTop() > 120) {
           $head.addClass('fixed_header');
        } else {
           $head.removeClass('fixed_header');
        }
    });

    // map
    if ($('#map').length > 0) {
        function initMap() {
            var lat = $('#map').attr('data-lat');
            var lng = $('#map').attr('data-lng');
            var myLatLng =  {lat: +lat, lng: +lng};
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 14,
                center: myLatLng,
                scrollwheel: false,
                navigationControl: false,
                mapTypeControl: false,
            });
            var marker = new google.maps.Marker({
                position: myLatLng,
                map: map,
                title: 'ShellHolster'
            });
            marker.setAnimation(google.maps.Animation.BOUNCE);
        }
        initMap();
    }

    // sliders
    if($(".swiper-js").length > 0){
        $.getScript("https://cdnjs.cloudflare.com/ajax/libs/Swiper/7.3.0/swiper-bundle.js", function(){
            $(".swiper-js").each(function() {
                var swiper;
                var _this = $(this),
                    container = _this.find(".swiper-container");
                if (_this.hasClass("banner-slider")) {
                    swipes = new Swiper(container[0], {
                        speed: 1500,
                        slidesPerView: 1,
                        spaceBetween: 20,
                        loop: true,
                        effect: 'fade',
                        fadeEffect: {
                            crossFade: true
                        },
                        autoplay: {
                            delay: 5000,
                        },
                        navigation: {
                            nextEl: $(this).find(".swiper-button-next")[0],
                            prevEl: $(this).find(".swiper-button-prev")[0]
                        },
                        pagination: {
                            el: $(this).find(".swiper-pagination")[0],
                        },
                    });
                }
                if (_this.hasClass("brands-slider")) {
                    swipes = new Swiper(container[0], {
                        speed: 1500,
                        slidesPerView: 5,
                        spaceBetween: 20,
                        loop: true,
                        autoplay: {
                            delay: 3000,
                        }
                    });
                }
                if (_this.hasClass("reviews-slider")) {
                    swipes = new Swiper(container[0], {
                        speed: 1500,
                        slidesPerView: 3,
                        spaceBetween: 40,
                        loop: true,
                        navigation: {
                            nextEl: $(this).find(".swiper-button-next")[0],
                            prevEl: $(this).find(".swiper-button-prev")[0]
                        },
                        pagination: {
                            el: $(this).find(".swiper-pagination")[0],
                        },
                        breakpoints: {
                            0: {
                                slidesPerView: 1,
                            },
                            650: {
                                slidesPerView: 2,
                            },
                            1024: {
                                slidesPerView: 3,
                            }
                        }
                    });
                }
            });
        });
    }

    // selects
    if($("select").length > 0){
        $.getScript("https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js", function(){
            $('select').niceSelect();
        });   
    }

    // fancybox
    if($("[data-fancybox]").length > 0){
        $.getScript("https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.js", function(){
            $("[data-fancybox]").fancybox({});
        });   
    }

});
