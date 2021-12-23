<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 */

?>

<div class="subscribtion">
    <div class="container">
        <div class="wrap">
            <p class="subscribtion-title">BE THE FIRST TO KNOW</p>
            <p class="subscribtion-subtitle"><b>Get 10%</b> off your order when you sign up for the latest news and savings!</p>
        </div>

        <div class="subscribtion-form">
            <?= do_shortcode(get_field('subscribe_form', 'contact')); ?>
        </div>
    </div>
</div>

<div class="free-shipping">
    <ul class="container">
        <li>
            <i aria-hidden="true" class="fas fa-shuttle-van"></i>
            <span>Free Shipping</span>
        </li>
        <li>
            <i aria-hidden="true" class="fas fa-globe"></i>
            <span>Worldwide Delivery</span>
        </li>
        <li>
            <i aria-hidden="true" class="far fa-life-ring"></i>
            <span>1 Year Warranty</span>
        </li>
    </ul>
</div>

<footer>
    <div class="container">
        <div class="wrap">
            <a href="/" class="logo-footer">
                <img src="<?= get_template_directory_uri(); ?>/img/mobile/footer_logo.webp" loading="lazy" alt="#"/>
            </a>

            <div class="column-wrap mobile-block">
                <div class="column contact-us">
                    <p class="column-title">Contact</p>
                    <div class="contacts-block">
                        <p>Phone</p>
                        <?php shell_contact_info('phones'); ?>
                    </div>
                    <div class="contacts-block">
                        <p>Address</p>
                        <span><?php shell_contact_info('address'); ?></span>
                    </div>
                    <div class="contacts-block">
                        <p>E-mail</p>
                        <?php shell_contact_info('email'); ?>
                    </div>
                </div>
            </div>
        </div>

        <div class="column-wrap">
            <div class="column folow-us">
                <p class="column-title">Follow Us</p>
                <p class="column-desc">Follow to get special offers, free giveaways, and attractive deals</p>

                <ul class="social">

                    <?php if( have_rows('socials', 'contact') ) : ?>
                    <?php while( have_rows('socials', 'contact') ) : the_row(); $link = get_sub_field('social'); ?>

                        <li><a href="<?= $link['url'] ?>" title="<?= $link['title'] ?>" target="<?= $link['target'] ?>"><?php the_sub_field('icon') ?></a></li>

                    <?php endwhile; ?>
                    <?php endif; ?>

                </ul>
            </div>

            <div class="column">
                <p class="column-title">
                    <?= wp_get_nav_menu_name( 'menu-footer-1' ); ?>
                </p>
                <?php wp_nav_menu([
                    'theme_location'  => 'menu-footer-1',
                    'menu_id'         => 'footer-menu-1',
                    'container'       => false,
                    'menu_class'      => ''
                ]) ?>
            </div>

            <div class="column">
                <p class="column-title">
                    <?= wp_get_nav_menu_name( 'menu-footer-1' ); ?>
                </p>
                <?php wp_nav_menu([
                    'theme_location'  => 'menu-footer-2',
                    'menu_id'         => 'footer-menu-2',
                    'container'       => false,
                    'menu_class'      => ''
                ]) ?>
            </div>

            <div class="column contact-us">
                <p class="column-title">Contact</p>
                <div class="contacts-block">
                    <p>Phone</p>
                    <?php shell_contact_info('phones'); ?>
                </div>
                <div class="contacts-block">
                    <p>Address</p>
                    <span><?php shell_contact_info('address'); ?></span>
                </div>
                <div class="contacts-block">
                    <p>E-mail</p>
                    <?php shell_contact_info('email'); ?>
                </div>
            </div>
        </div>
    </div>
</footer>

<?php wp_footer(); ?>

</body>
</html>
