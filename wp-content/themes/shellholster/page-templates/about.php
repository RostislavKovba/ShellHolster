<?php
/**
 * Template name: About
 */

get_header();

?>

<main class="page-wrapper about-us-page">

    <?php get_template_part( 'template-parts/content', 'heading' ); ?>

    <div class="container">
        <div class="editor">
            <!-- the_content() -->
            <h2>Bringing People & Technology Together</h2>
            <p>ShellHolster.com brings the best hard shell phone cases directly to you, from a company you can trust. From our HQ in Cherry Hill, New Jersey; ShellHolster.com has been providing customers with a combination of price, selection, security, and service since 2014.</p>
            <p>ShellHolster.com thrives off of your 100% satisfaction. Our company wouldn’t exist today if our customers weren’t happy with the products and services we provide. Our skilled Customer Happiness reps are available to help with any questions about our products, billing, transactions, or even for a casual hello. We know how it feels to be frustrated with products that don’t fit, don’t look like they were described, or receiving broken items in the mail, which is why we offer a 100% satisfaction guarantee. Message Us for ANY reason and we’ll take care of the issue as fast as we can.</p>
            <p>Our company is constantly growing, improving and evolving. In order for us to keep up with our consumers’ needs, we are always reviewing our company’s procedures both internally and externally, making sure that our site is clear, easy to navigate, and our product selection is always abundant and in stock. This is important for us, that you have the best online experience for your mobile phone and wireless accessory needs. With that, cyber security has also been a priority since day one. We guarantee that our customer’s privacy and data is completely safe from third parties and is only used by us for fulfilling orders and sending only the best offers available your way.</p>
            <!-- the_content() -->

            <a href="#" class="btn orange">Phone Cases Online Store</a>
        </div>
    </div>

    <div class="why-us" style="background-image:url('<?= get_template_directory_uri(); ?>/img/all/gotoStore.png');">
        <div class="container">
            <div class="why-us-list">
                <h3 class="title-2">Why Us</h3>
                <ul>
                    <li>Best phone cases protection</li>
                    <li>Free&Fast delivery on all domestic orders</li>
                    <li>Best deals</li>
                    <li>Products warranty</li>
                    <li>Fast&Easy payment process</li>
                </ul>
            </div>
        </div>
    </div>

    <div class="latest-products">
        <div class="container">
            <p class="subtitle">latest Products</p>
            <h2 class="title">Find the Best Phone Case <br> for Your Device</h2>
            <a href="#" class="btn navy">VIEW ALL PRODUCTS</a>
        </div>
    </div>
</main>

<?php

get_footer();

?>


