<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'SGX8/o0YCzsVzlOrpx0iny9ggZM1TTVVKIPwrvWBPnI8rGXBt9FoNkNXm3TvhV8K0Izi2RXM6h0OO5xswhZKuw==');
define('SECURE_AUTH_KEY',  'F4QOF2vDbUQW26Njb+/jQ2HpL2ZxTeUk3qDrfr6IiPDp7LGICraPIzcTndSsX3VWK5CtoFwB2ahEY8L6ZLYUrQ==');
define('LOGGED_IN_KEY',    'ReR7OX1ELgZXDNHfo2XW3K+eBk6GtTV/pBF/HDoCkx8Ljofm8W9bfTvWA2OOGCz59xw5PDbhl6F0KGDOeJK54w==');
define('NONCE_KEY',        'Fn5tv5e+3W7GBexl755ZHLtacOinEZUBQjwIyy0cwbYbGF571irAAoBZykuXojeLt31pMIYQ9ZA6GVGl4jyqTg==');
define('AUTH_SALT',        'bFyHydkMIcdHlq3geHf6xf4Eh+Togl9eg4frgK1X4kLNh3Cp6l13oOToc82v5keZofXs7OCfMgdYLQrcEydg0w==');
define('SECURE_AUTH_SALT', 'jANYgP9CzweZ7RbrW735HFuB3/hIi4fAVjMSVhwmMZy2DMSCgVr+fzt4JKhomMGpLIJ7Nzf1L7yTnwnKNkG3Bw==');
define('LOGGED_IN_SALT',   'gg+7WCbXvM8tBFuJpuSTpU5HROOq6BH9mTHNlTGohvgqMxruRYGFap+h0+AzOfgcx1TtTiNQXFBXsU0gKTgAiA==');
define('NONCE_SALT',       'guzNKboHBKWnB/QoAf8OU9oOqjimraZYAKsAiBAk1tXCnyF79YcEY1YP+QxpXFf5QYZM714+rZupTpvLWi5mjg==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
