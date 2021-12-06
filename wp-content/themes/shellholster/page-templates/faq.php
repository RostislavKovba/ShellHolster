<?php
/**
 * Template name: FAQ
 */

get_header(); ?>

<main class="page-wrapper faq-page">

    <?php get_template_part( 'template-parts/content', 'heading' ); ?>

    <div class="container">
        <ul class="faq-block">

            <?php if (have_rows('faq-list')) : ?>
            <?php while (have_rows('faq-list')) : the_row(); ?>

                <li>
                    <div class="faq-title">
                        <span>
                            <?php the_sub_field('question'); ?>
                        </span>
                        <div class="faq-btn">
                            <i class="fas fa-minus"></i>
                            <i class="fas fa-plus"></i>
                        </div>
                    </div>

                    <p class="faq-content">
                        <?php the_sub_field('answer'); ?>
                    </p>
                </li>

            <?php endwhile; ?>
            <?php endif; ?>

        </ul>

        <p class="btn-subtitle">Still have question?</p>
        <a href="/contact" class="btn orange">GET IN TOUCH WITH US</a>
    </div>

</main>

<?php get_footer(); ?>


