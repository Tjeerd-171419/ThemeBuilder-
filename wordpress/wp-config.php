<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpresstheme' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '+4g9F8}!~Ks{hj[XumoYUcM#}KdmT[Z=FhpiJ2L 31A.a-9cqU^a=U#BG^g5XL,{' );
define( 'SECURE_AUTH_KEY',  's:Ax;,$)>&F}G[Kn~m-K&PR-Uw5G+yu&};tAB3+*MPJyW;AP>frB6_g?w-i?GUje' );
define( 'LOGGED_IN_KEY',    'Lu_JKmV)_2&ZH^pn0y!&oJX4N2XNXl*U;ysDVlKCE,uyR|m}]%vx_UGwDF-`k?v}' );
define( 'NONCE_KEY',        'I(5}Y%+H)  < ae}X>f.Q<lU:Sk;|Fd`#a`4~=}ci((W>,#Ev0]O[WFm(Uvi#8-m' );
define( 'AUTH_SALT',        '3:o<~=E,lM`e0Oz;fcK+;<@pf--gi~sTfG_iK%<L:9O n#)6K8%hldje`WB8UN)V' );
define( 'SECURE_AUTH_SALT', '/=%fLYz2gf<]^~`@/I)_4{x@]}e7%[Qbj^K~]*0.&-#m~xt2N8936^x[E%cigfo(' );
define( 'LOGGED_IN_SALT',   '_b<sI+yJm*z<`v.QZ;P7MM$2P ;-R]OQ(}<0](8(=?am|N ~x`}AJ#H6R|fUF2J4' );
define( 'NONCE_SALT',       '/S7Hy MlYLmfDz45Fd{P5h=!?{^5t);D+O&3[(DTwf-vYi59:E|AdcL}c@F}}R7+' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wpth_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
