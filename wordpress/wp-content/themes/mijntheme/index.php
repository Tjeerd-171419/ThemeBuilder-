<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php bloginfo('name'); ?> - <?php bloginfo('description'); ?></title>
    <link rel="stylesheet" href="<?php echo get_stylesheet_uri(); ?>">
</head>

<body>
    <header>
        <h1><a href="<?php echo esc_url(home_url('/')); ?>"><?php bloginfo('name'); ?></a></h1>
        <nav>
            <?php
            wp_nav_menu(array('theme_location' => 'primary', 'container' => 'nav', 'container_class' => 'site-navigation'));
            ?>
        </nav>
    </header>

    <main>
        <?php
        if (have_posts()) :
            while (have_posts()) :
                the_post();
        ?>
                <article id="post-<?php the_ID(); ?>" <?php post_class('blog-post'); ?>>
                    <h2 class="entry-title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
                    <div class="entry-content">
                        <?php the_content(); ?>
                    </div>
                </article>
        <?php
            endwhile;
        else :
        ?>
            <p>Geen berichten gevonden.</p>
        <?php endif; ?>
    </main>

    <footer>
        <div class="container">
            <div class="footer-widgets">
                <div class="widget"></div>
                <div class="widget">
                    <h3>Contact</h3>
                    <p>123 Street, City</p>
                    <p>Phone: 123-456-7890</p>
                    <p>Email: info@example.com</p>
                </div>
            </div>
        </div>
        <div class="bottom-bar">
            <div class="container">
                <p>&copy; <?php echo date('Y'); ?> Your Website. All rights reserved.</p>
            </div>
        </div>
    </footer>
</body>

</html>
