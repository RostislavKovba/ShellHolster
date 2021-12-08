<?php
/**
 * Template name: Home
 */

get_header();

?>

<main class="page-wrapper front-page" xmlns="http://www.w3.org/1999/html">

    <section class="banner">
        <div class="swiper-js banner-slider">
            <div class="swiper-buttons">
                <div class="swiper-button-prev"><i class="fas fa-chevron-left"></i></div>
                <div class="swiper-button-next"><i class="fas fa-chevron-right"></i></div>
            </div>
            <div class="swiper-pagination"></div>

            <div class="swiper-container">
                <div class="swiper-wrapper">

                    <?php if ( have_rows('hero_slider') ) : ?>
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
            <h2 class="title"><?php the_field('cases_title'); ?></h2>
            <?php the_field('cases_text'); ?>
            <a href="<?= get_field('cases_button')['url'] ?>" class="btn orange"><?= get_field('cases_button')['title'] ?></a>
        </div>
    </section>

    <section class="cases-series">
        <div class="container">
            <p class="subtitle"><?php the_field('series_suptitle'); ?></p>
            <h2 class="title"><?php the_field('series_title'); ?></h2>

            <ul class="cases-series-list">
                <?php if ( have_rows('series_list') ) : ?>
                <?php while ( have_rows('series_list') ) : the_row();
                    $img  = get_sub_field('image');
                    $link = get_sub_field('link');
                    ?>

                    <li>
                        <p class="subtitle label">Series</p>
                        <p class="title-3"><?php the_sub_field('title'); ?></p>
                        <p class="description"><?php the_sub_field('text'); ?></p>
                        <a href="<?= $link['url'] ?>" class="btn btn-2 orange"><?= $link['title'] ?></a>
                        <img src="<?= $img['url'] ?>" alt="<?= $img['alt'] ?>" />
                    </li>

                <?php endwhile; ?>
                <?php endif; ?>
            </ul>
        </div>
    </section>

    <section class="functional-design">
        <div class="container">
            <p class="subtitle"><?php the_field('design_suptitle'); ?></p>
            <h2 class="title"><?php the_field('design_title'); ?></h2>
            <img src="<?= get_field('design_img')['url']; ?>" alt="<?= get_field('design_img')['alt']; ?>" />
        </div>
    </section>

    <section class="portability">
        <div class="container">
            <p class="subtitle"<?php the_field('portability_suptitle'); ?></p>
            <h2 class="title"><?php the_field('portability_title'); ?></h2>
            <img src="<?= get_field('portability_img')['url'] ?>" alt="<?= get_field('portability_img')['alt'] ?>" />
        </div>
    </section>

    <section class="quality-cases">
        <div class="container">
            <p class="subtitle"><?php the_field('features_suptitle'); ?></p>
            <h2 class="title"><?php the_field('features_title'); ?></h2>
            <ul class="quality-cases-wrap">
                <?php if ( have_rows('features_list') ) : ?>
                <?php while ( have_rows('features_list') ) : the_row();
                    $img = get_sub_field('image');
                    ?>

                    <li>
                        <img src="<?= $img['url']; ?>" alt="<?= $img['alt'] ?>"/>
                        <b><?php the_sub_field('title'); ?></b>
                    </li>

                <?php endwhile; ?>
                <?php endif; ?>
            </ul>
        </div>
    </section>

    <section class="cases-video">
        <div class="container">
            <a href="<?php the_field('features_video'); ?>?wmode=opaque" data-fancybox>
                <img src="<?= get_field('features_preview')['url']; ?>" alt="<?= get_field('features_preview')['alt']; ?>" />
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
                            <p class="subtitle"><?php the_field('types_suptitle'); ?></p>
                            <p class="title"><?php the_field('types_title'); ?></p>
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
                        <?php
                        $brands = get_field('brands_list');
                        foreach ($brands as $brand) : ?>

                            <div class="swiper-slide">
                                <img src="<?= $brand['url'] ?>" alt="<?= $brand['alt'] ?>">
                            </div>

                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="reviews">
        <p class="subtitle"><?php the_field('reviews_suptitle'); ?></p>
        <h2 class="title"><?php the_field('reviews_title'); ?></h2>
        <div class="container">
            <div class="swiper-js reviews-slider">
                <div class="swiper-buttons">
                    <div class="swiper-button-prev"><i class="fas fa-chevron-left"></i></div>
                    <div class="swiper-button-next"><i class="fas fa-chevron-right"></i></div>
                </div>
                <div class="swiper-pagination"></div>
                <div class="swiper-container">
                    <div class="swiper-wrapper">

                        <?php if ( have_rows('reviews_list') ) : ?>
                        <?php while ( have_rows('reviews_list') ) : the_row();
                            ?>

                            <div class="swiper-slide">
                                <p class="reviews-title"><?php the_sub_field('title'); ?></p>
                                <p class="reviews-desc">
                                    ”<?php the_sub_field('text'); ?>”
                                </p>
                                <div class="rating">
                                    <?php
                                    $star_rating = get_sub_field('rating');
                                    for ( $i = 0; $i < 5; $i++ ) {
                                        $star = $i < $star_rating
                                            ? '<i class="fas fa-star"></i>'
                                            : '<i class="fas fa-star" style="color: #ccd6df;"></i>';
                                        echo $star;
                                    };
                                    ?>
                                </div>
                                <div class="wrap">
                                    <p class="reviews-author"><?php the_sub_field('author'); ?></p>
                                    <p class="reviews-position">Customer</p>
                                </div>
                                <a href="<?= get_sub_field('button')['url'] ?>" class="btn btn-2 orange"><?= get_sub_field('button')['title'] ?></a>
                            </div>

                        <?php endwhile; ?>
                        <?php endif; ?>

                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="about-block">
        <div class="about-block-img"></div>
        <div class="about-block-content">
            <h3><?php the_field('about_title'); ?></h3>
            <?php the_field('about_text'); ?>
            <a href="<?= get_field('about_button')['url'] ?>" class="btn orange"><?= get_field('about_button')['title'] ?></a>
        </div>
    </section>

    <section class="buy">
        <div class="container">
            <div class="wrap">
                <p class="subtitle"><?php the_field('filters_suptitle'); ?></p>
                <h2 class="title"><?php the_field('filters_title'); ?></h2>
            </div>
            <form class="buy-options" method="get" action="<?php the_permalink(get_option('woocommerce_shop_page_id' )); ?>">
                <div class="options-wrap">
                    <select name="filter_brand">
                        <option value="">All Brands</option>
                        <?php the_filter_options( 'brand' ); ?>
                    </select>
                    <select name="filter_series">
                        <option value="">All Series</option>
                        <?php the_filter_options( 'series' ); ?>
                    </select>
                    <select name="filter_model">
                        <option value="">All Models</option>
                        <?php the_filter_options( 'model' ); ?>
                    </select>
                    <select name="filter_style">
                        <option value="">All Style</option>
                        <?php the_filter_options( 'style' ); ?>
                    </select>
                    <select name="filter_color">
                        <option value="">All Colors</option>
                        <?php the_filter_options( 'color' ); ?>
                    </select>
                </div>
                <button type="submit" class="btn orange">SHOP NOW</button>
            </form>
        </div>
    </section>

    <section class="go-to-store" style="background-image:url('<?php the_field('to_store_bg'); ?>');">
        <div class="container">
            <p class="subtitle"><?php the_field('to_store_suptitle'); ?></p>
            <p class="title"><?php the_field('to_store_title'); ?></p>
            <a href="<?= get_field('to_store_button')['url']; ?>" class="btn orange"><?= get_field('to_store_button')['title']; ?></a>
        </div>
    </section>
</main>

<?php
get_footer();