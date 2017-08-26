<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$app->get('/', function () use ($app) {
    return "Hello world &copy; <a href='http://fb.me/rizal.ofdraw' target='blank'>Rizal Khilman</a>";
});
// localhost/lumen-24/input-siswa

$app->get('/input-siswa', 'SiswaController@inputSiswa');

$app->get('/get-siswa', 'SiswaController@getSiswa');

$app->post('/update-siswa', 'SiswaController@updateSiswa');

$app->post('/delete-siswa', 'SiswaController@deleteSiswa');

//$app->get('/get-pelanggaran', 'SiswaController@getPelanggaran');