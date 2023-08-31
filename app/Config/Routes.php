<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

/*
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
// The Auto Routing (Legacy) is very dangerous. It is easy to create vulnerable apps
// where controller filters or CSRF protection are bypassed.
// If you don't want to define all routes, please use the Auto Routing (Improved).
// Set `$autoRoutesImproved` to true in `app/Config/Feature.php` and set the following to true.
// $routes->setAutoRoute(false);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
$routes->get('/', 'Home::index');
$routes->get('/Home/index', 'Home::index');
$routes->get('/Home/login', 'Home::login');
$routes->get('/User/index', 'User::index');
$routes->get('/Home/dasboard', 'Home::dasboard');

//rout pizza
$routes->get('Menu/pizza', 'Menu::pizza');
$routes->get('Menu/create', 'Menu::create');
$routes->get('Menu/edit/(:segment)', 'Menu::edit/$1');
$routes->post('Menu/save', 'Menu::save');
$routes->post('Menu/update/(:segment)', 'Menu::update/$1');
$routes->delete('/Menu/(:num)', 'Menu::delete/$1');
// //routs hamburger
// $routes->get('Hamburger/index', 'Hamburger::index');
// $routes->get('Hamburger/create', 'Hamburger::create');
// $routes->get('Hamburger/edit/(:segment)', 'Hamburger::edit/$1');
// $routes->post('Hamburger/save', 'Hamburger::save');
// $routes->post('Hamburger/update/(:segment)', 'Hamburger::update/$1');
// $routes->delete('/Hamburger/(:num)', 'Hamburger::delete/$1');
// // drink
// $routes->get('Drink/index', 'Drink::index');
// $routes->get('Drink/create', 'Drink::create');
// $routes->get('Drink/edit/(:segment)', 'Drink::edit/$1');
// $routes->post('Drink/save', 'Drink::save');
// $routes->post('Drink/update/(:segment)', 'Drink::update/$1');
// $routes->delete('/Drink/(:num)', 'Drink::delete/$1');


/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (is_file(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
    require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
