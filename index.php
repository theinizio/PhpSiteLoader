<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

$curl = curl_init();

curl_setopt($curl, CURLOPT_URL, "http://localhost/site1"); #input
curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($curl, CURLOPT_CUSTOMREQUEST, 'GET');

$result = curl_exec($curl);


if (!$result)  {
    header("HTTP/1.0 404 Not Found");
}

curl_close($curl);
echo $result;
die;