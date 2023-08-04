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
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress_db' );

/** Database username */
define( 'DB_USER', 'alae' );

/** Database password */
define( 'DB_PASSWORD', 'dimawidad' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

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
define( 'AUTH_KEY',          '!ZpJ)-0Kbrq6KAk)3Hf@wt~J]-0M,^uK6ub&IJ:C4#oGaL><7Vwq-4_2zb+$<fLr' );
define( 'SECURE_AUTH_KEY',   '1v%NQ9bM2LT,Xe]T]UZhRwgy8G<B34,T6Ct:9nQ.`5%l,d9})C*@{`l.bS2e`30}' );
define( 'LOGGED_IN_KEY',     '2p2mGRZ&kEM1TZ&r.r.~-1f,R+7sEi)A:7H=%B/T2N]i@k^mQy{X42PR<eC-Y7VP' );
define( 'NONCE_KEY',         'ehz!Eixd%^)]v@h<@FE|6]~[A%H`N< 0z@Vx1]-r_}ZpFCvvxhR].-,8@?SKsfY*' );
define( 'AUTH_SALT',         '8@8A[<ND1dX+rU7Bss^F# I6Tu89*V{X.i[{U$5Y5eY-WqpFh@F45q.< J3|CT#:' );
define( 'SECURE_AUTH_SALT',  'BcQ:<Y##_}=6>dWu/4D|(bZ}!)kZmSo#tCYo1:Xn=lFClg}pT|m:qU~i1Ls.:j9C' );
define( 'LOGGED_IN_SALT',    ';(_eUnx(BM#j&4z[eJr2Ua|]on,e=t8fbcGJVqlC:sgZcL6lQYM2<AZF+:Aw!:!a' );
define( 'NONCE_SALT',        '?x}WPEQe0^tRG/gczqgNvAZ5zy.26;Gbb`dAr~/5U@YDxuTPqFO3Q/:#}tS}1>Rx' );
define( 'WP_CACHE_KEY_SALT', 'AW niH:/.=@Ta>H+~aQm^%Mpr8|bTQ7~Sd;?En%[8L;B- Lo*y^Od:!QvR05 D1v' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



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
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
