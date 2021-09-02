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
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'uniformesmatrix' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
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
define( 'AUTH_KEY',         'WoKtrr3^Jr[B;g~PXphTG(eY8_%)w|4k(L2kxX:4XIUV,m=X4W`Np]plEdv[z}4@' );
define( 'SECURE_AUTH_KEY',  '6k9Uy>S^x~H~QIcieX5ADf8(/_}mJyyx} g5|!l{}E]PFQ,!N]W4?@bC+2;JWB|o' );
define( 'LOGGED_IN_KEY',    'A;N{ `_*$t+J`hhAM<*)rU ):<x7A`cU?[^?#8aL#F$!<Qp<tjvfl+v$:qU`F3II' );
define( 'NONCE_KEY',        'xCa+F&8>r@}j2`1DqV1R[R{&V@Lx+7xACR#iV))^{l9H7|Kag[%~s22oZM5&8q<,' );
define( 'AUTH_SALT',        'yboSHv/gZ#Q{?pA~2+uo+YK?Vk6zRux$rLUk9H]-D9sl^tF0%MF]bLCn.%C+!vq`' );
define( 'SECURE_AUTH_SALT', '{B^2Ii;^ #Y0 RRjV3-+V.d2?s^z?p%NIs/i=~UY!wFc*o{D_^DWQ1HI9/)&6{[:' );
define( 'LOGGED_IN_SALT',   '_qE}#q.akJm$VN`3R_a2x)Gp08/NP]=dzeUe~GxqPH3<Y1l.gpXkRO&},Q$SoF{)' );
define( 'NONCE_SALT',       'detZ6g >P+YGJef|U%Q$YM^>NX=b7]nq}LogtCDfZ=qDPGNw@=5jPX$0002_Pxa=' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
