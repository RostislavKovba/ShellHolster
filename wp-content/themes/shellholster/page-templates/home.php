<?php
/**
 * Template name: Home
 */

get_header();

?>

<main class="page-wrapper front-page">

    <section class="banner">
        <div class="swiper-js banner-slider">
            <div class="swiper-buttons">
                <div class="swiper-button-prev"><i class="fas fa-chevron-left"></i></div>
                <div class="swiper-button-next"><i class="fas fa-chevron-right"></i></div>
            </div>
            <div class="swiper-pagination"></div>

            <div class="swiper-container">
                <div class="swiper-wrapper">

                    <? if ( have_rows('hero_slider') ) : ?>
                    <?php while ( have_rows('hero_slider') ) : the_row();
                        $img  = get_sub_field('image');
                        $link = get_sub_field('link');
                        ?>

                        <div class="swiper-slide">
                            <img src="<?= $img['url'] ?>" alt="<?= $img['alt'] ?>">
                            <?php if( $link ) : ?>
                                <a href="<?= $link['url'] ?>" class="btn orange"><?= $link['title'] ?></a>
                            <?php endif; ?>
                        </div>

                    <?php endwhile; ?>
                    <?php endif; ?>

                </div>
            </div>
        </div>
    </section>

    <section class="best-cases">
        <div class="container">
            <h2 class="title">Use Only Best Phones Cases</h2>
            <p>The Shell Holster Combo it is best case for cell phone. It is durable, sturdy. It provides high protection and improves the phone usability. It defends your gadget from dirt, dust, moisture and scratches thanks to our rubberized holster. Using new technologies makes it possible to increase the safety of the device in case of a fall. Using a 180-degree rotatable holster with a ratchet clip will provide comfortable wearing, great fit and convenient positioning. The highest quality of rubberized texture provides a secure grip on your phone. With the built-in kickstand, you can place your mobile phone horizontally or vertically for video calls or watching multimedia. All holes are fully compatible with buttons, sensors and cameras. Supports wireless charging. Based on all the characteristics, our holster can stand on a par with the best phone case in the world.</p>
            <a href="#" class="btn orange">READ MORE</a>
        </div>
    </section>

    <section class="cases-series">
        <div class="container">
            <p class="subtitle">CASE SERIES</p>
            <h2 class="title">Choose Your Functionality.</h2>
            <ul class="cases-series-list">
                <li>
                    <p class="subtitle label">Series</p>
                    <p class="title-3">Shell Holster</p>
                    <p class="description">Offers slim and lightweight 360-degree protection with a multi-angle kickstand</p>
                    <a href="#" class="btn btn-2 orange">READ MORE</a>
                    <img src="<?= get_template_directory_uri(); ?>/img/all/ChooseYourFunctionalityDefender.png" alt="#" />
                </li>
                <li>
                    <p class="subtitle label">Series</p>
                    <p class="title-3">Shell Holster</p>
                    <p class="description">Offers slim and lightweight 360-degree protection with a multi-angle kickstand</p>
                    <a href="#" class="btn btn-2 orange">READ MORE</a>
                    <img src="<?= get_template_directory_uri(); ?>/img/all/ChooseYourFunctionalityDefender.png" alt="#" />
                </li>
                <li>
                    <p class="subtitle label">Series</p>
                    <p class="title-3">Shell Holster</p>
                    <p class="description">Offers slim and lightweight 360-degree protection with a multi-angle kickstand</p>
                    <a href="#" class="btn btn-2 orange">READ MORE</a>
                    <img src="<?= get_template_directory_uri(); ?>/img/all/ChooseYourFunctionalityDefender.png" alt="#" />
                </li>
                <li>
                    <p class="subtitle label">Series</p>
                    <p class="title-3">Shell Holster</p>
                    <p class="description">Offers slim and lightweight 360-degree protection with a multi-angle kickstand</p>
                    <a href="#" class="btn btn-2 orange">READ MORE</a>
                    <img src="<?= get_template_directory_uri(); ?>/img/all/ChooseYourFunctionalityDefender.png" alt="#" />
                </li>
            </ul>
        </div>
    </section>

    <section class="functional-design">
        <div class="container">
            <p class="subtitle">functional design</p>
            <h2 class="title">More Features. More Protection.</h2>
            <img src="<?= get_template_directory_uri(); ?>/img/all/MoreFeaturesMoreProtection.png" alt="#" />
        </div>
    </section>

    <section class="portability">
        <div class="container">
            <p class="subtitle">easy portability</p>
            <h2 class="title">180 Belt Clip.</h2>
            <img src="<?= get_template_directory_uri(); ?>/img/all/180BeltClip.png" alt="#" />
        </div>
    </section>

    <section class="quality-cases">
        <div class="container">
            <p class="subtitle">Quality Cases</p>
            <h2 class="title">Extra Features for Your Comfort</h2>
            <ul class="quality-cases-wrap">
                <li>
                    <img src="<?= get_template_directory_uri(); ?>/img/all/ExtraFeaturesVerticalKickstand.png" alt="#"/>
                    <b>Vertical Kickstand</b>
                </li>
                <li>
                    <img src="<?= get_template_directory_uri(); ?>/img/all/ExtraFeaturesHorizontaKickstand.png" alt="#"/>
                    <b>Horizontal Kickstand</b>
                </li>
                <li>
                    <img src="<?= get_template_directory_uri(); ?>/img/all/ExtraFeaturesWirelessCharging.png" alt="#"/>
                    <b>Wireless Charging</b>
                </li>
                <li>
                    <img src="<?= get_template_directory_uri(); ?>/img/all/ExtraFeaturesEasilyRemovable.png" alt="#"/>
                    <b>Easily Removable</b>
                </li>
            </ul>
        </div>
    </section>

    <section class="cases-video">
        <div class="container">
            <a href="https://shellholster.com/wp-content/uploads/2021/03/Shell-Holster-Combo-1.mp4?wmode=opaque" data-fancybox>
                <img src="<?= get_template_directory_uri(); ?>/img/all/video.png" alt="#" />
            </a>
        </div>
        <div class="wrapper">
            <div class="container">
                <img src="<?= get_template_directory_uri(); ?>/img/all/SlimandFunctional.png" alt="#">
                <div class="wrap">
                    <p class="title-3"><span>Slim and</span> Functional</p>
                    <p class="title-3"><span>Ultra</span> Lightweight</p>
                </div>
            </div>
        </div>
    </section>

    <section class="phone-device">
        <div class="container">
            <div class="table-wrap">
                <table>
                    <tr class="top-heading">
                        <th>
                            <p class="subtitle">BUILT-IN FEATURES</p>
                            <p class="title">CHOOSE YOUR PHONE CASE</p>
                        </th>
                        <th>
                            <img src="<?= get_template_directory_uri(); ?>/img/all/CHOOSEYOURPONECASE1.png" alt="#">
                        </th>
                        <th>
                            <img src="<?= get_template_directory_uri(); ?>/img/all/CHOOSEYOURPNECASE2.png" alt="#">
                        </th>
                        <th>
                            <img src="<?= get_template_directory_uri(); ?>/img/all/CHOOSEYOURPNECASE3.png" alt="#">
                        </th>
                    </tr>
                    <tr class="heading">
                        <td></td>
                        <td>Shell Holster Combo</td>
                        <td>Dual Layer Holster</td>
                        <td>Defender</td>
                    </tr>
                    <tr>
                        <td>Protection</td>
                        <td>Light</td>
                        <td>Medium</td>
                        <td>Heavy</td>
                    </tr>
                    <tr>
                        <td>Thickness</td>
                        <td>Slim</td>
                        <td>Medium</td>
                        <td>Thick</td>
                    </tr>
                    <tr>
                        <td>Built-In Screen Protector</td>
                        <td>No</td>
                        <td>No</td>
                        <td>Yes</td>
                    </tr>
                    <tr>
                        <td>Kickstand</td>
                        <td>Yes</td>
                        <td>Yes</td>
                        <td>No</td>
                    </tr>
                    <tr>
                        <td>Multi-Layer</td>
                        <td>No</td>
                        <td>Yes</td>
                        <td>Yes</td>
                    </tr>
                    <tr>
                        <td>Ratcheting Holster</td>
                        <td>No</td>
                        <td>Yes</td>
                        <td>Yes</td>
                    </tr>
                </table>
            </div>
        </div>
    </section>

    <section class="brands">
        <div class="container">
            <div class="swiper-js brands-slider">
                <div class="swiper-container">
                    <div class="swiper-wrapper">

                        <div class="swiper-slide">
                            <img src="<?= get_template_directory_uri(); ?>/img/all/BrandApple.png" alt="#">
                        </div>
                        <div class="swiper-slide">
                            <img src="<?= get_template_directory_uri(); ?>/img/all/BrandHTC.png" alt="#">
                        </div>
                        <div class="swiper-slide">
                            <img src="<?= get_template_directory_uri(); ?>/img/all/BrandLG.png" alt="#">
                        </div>
                        <div class="swiper-slide">
                            <img src="<?= get_template_directory_uri(); ?>/img/all/BrandMoto.png" alt="#">
                        </div>
                        <div class="swiper-slide">
                            <img src="<?= get_template_directory_uri(); ?>/img/all/BrandSansung.png" alt="#">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="reviews">
        <p class="subtitle">Customer Reviews</p>
        <h2 class="title">Reviews</h2>
        <div class="container">
            <div class="swiper-js reviews-slider">
                <div class="swiper-buttons">
                    <div class="swiper-button-prev"><i class="fas fa-chevron-left"></i></div>
                    <div class="swiper-button-next"><i class="fas fa-chevron-right"></i></div>
                </div>
                <div class="swiper-pagination"></div>
                <div class="swiper-container">
                    <div class="swiper-wrapper">

                        <div class="swiper-slide">
                            <p class="reviews-title">Perfect Item!</p>
                            <p class="reviews-desc">
                                ”The item was perfect. It was easy to use and a perfect fit for my husband use on his belt or pocket.”
                            </p>
                            <div class="rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <div class="wrap">
                                <p class="reviews-author">Gladys </p>
                                <p class="reviews-position">Customer </p>
                            </div>
                            <a href="#" class="btn btn-2 orange">View Product</a>
                        </div>
                        <div class="swiper-slide">
                            <p class="reviews-title">Perfect Item!</p>
                            <p class="reviews-desc">
                                ”The item was perfect. It was easy to use and a perfect fit for my husband use on his belt or pocket.”
                            </p>
                            <div class="rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <div class="wrap">
                                <p class="reviews-author">Gladys </p>
                                <p class="reviews-position">Customer </p>
                            </div>
                            <a href="#" class="btn btn-2 orange">View Product</a>
                        </div>
                        <div class="swiper-slide">
                            <p class="reviews-title">Perfect Item!</p>
                            <p class="reviews-desc">
                                ”The item was perfect. It was easy to use and a perfect fit for my husband use on his belt or pocket.”
                            </p>
                            <div class="rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <div class="wrap">
                                <p class="reviews-author">Gladys </p>
                                <p class="reviews-position">Customer </p>
                            </div>
                            <a href="#" class="btn btn-2 orange">View Product</a>
                        </div>
                        <div class="swiper-slide">
                            <p class="reviews-title">Perfect Item!</p>
                            <p class="reviews-desc">
                                ”The item was perfect. It was easy to use and a perfect fit for my husband use on his belt or pocket.”
                            </p>
                            <div class="rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <div class="wrap">
                                <p class="reviews-author">Gladys </p>
                                <p class="reviews-position">Customer </p>
                            </div>
                            <a href="#" class="btn btn-2 orange">View Product</a>
                        </div>
                        <div class="swiper-slide">
                            <p class="reviews-title">Perfect Item!</p>
                            <p class="reviews-desc">
                                ”The item was perfect. It was easy to use and a perfect fit for my husband use on his belt or pocket.”
                            </p>
                            <div class="rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <div class="wrap">
                                <p class="reviews-author">Gladys </p>
                                <p class="reviews-position">Customer </p>
                            </div>
                            <a href="#" class="btn btn-2 orange">View Product</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="about-block">
        <div class="about-block-img"></div>
        <div class="about-block-content">
            <h3>ABOUT ROME TECH</h3>
            <b>Bringing People & Technology Together</b>
            <p>ShellHolster.com thrives off of your 100% satisfaction. Our phone cases website wouldn’t exist today if our customers weren’t happy with the products and services we provide. Our skilled Customer Happiness reps are available to help with any questions about our products, billing, transactions, or even for a casual hello. We know how it feels to be frustrated with products that don’t fit, don’t look like they were described, or receiving broken items in the mail, which is why we offer a 100% satisfaction guarantee. Message Us for ANY reason and we’ll take care of the issue as fast as we can.</p>
            <a href="#" class="btn orange">READ MORE</a>
        </div>
    </section>

    <section class="buy">
        <div class="container">
            <div class="wrap">
                <p class="subtitle">BUY SHELL HOLSTER CASE</p>
                <h2 class="title">Experience the New Kind of Phone Usability</h2>
            </div>
            <div class="buy-options">
                <div class="options-wrap">
                    <select>
                        <option data-display="All Brands">All Brands</option>
                        <option value="Apple">Apple</option>
                        <option value="Apple2">Apple2</option>
                        <option value="Apple3" disabled>Apple3</option>
                        <option value="Apple4">Apple4</option>
                    </select>
                    <select>
                        <option data-display="All Series">All Series</option>
                        <option value="Apple">Apple</option>
                        <option value="Apple2">Apple2</option>
                        <option value="Apple3" disabled>Apple3</option>
                        <option value="Apple4">Apple4</option>
                    </select>
                    <select>
                        <option data-display="All Models">All Models</option>
                        <option value="Apple">Apple</option>
                        <option value="Apple2">Apple2</option>
                        <option value="Apple3" disabled>Apple3</option>
                        <option value="Apple4">Apple4</option>
                    </select>
                    <select>
                        <option data-display="All Style">All Style</option>
                        <option value="Apple">Apple</option>
                        <option value="Apple2">Apple2</option>
                        <option value="Apple3" disabled>Apple3</option>
                        <option value="Apple4">Apple4</option>
                    </select>
                    <select>
                        <option data-display="All Colors">All Colors</option>
                        <option value="Apple">Apple</option>
                        <option value="Apple2">Apple2</option>
                        <option value="Apple3" disabled>Apple3</option>
                        <option value="Apple4">Apple4</option>
                    </select>
                </div>
                <div class="btn orange">SHOP NOW</div>
            </div>
        </div>
    </section>

    <section class="go-to-store">
        <div class="container">
            <p class="subtitle">For more cases</p>
            <p class="title">Go to Store</p>
            <a href="#" class="btn orange">SHOP NOW</a>
        </div>
    </section>
</main>

<?php

get_footer();

?>


