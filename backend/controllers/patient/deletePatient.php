<?php 
include "../api.php";
include "../../models/patient.php";

header("Access-Control-Allow-Origin: *");

if($_SERVER["REQUEST_METHOD"] === "POST"){
    $queries = array();
    parse_str($_SERVER['QUERY_STRING'], $queries);
    try{
        if(empty($queries)){
            sendResponse(404, "Not Found!", "text/html");
        }
        else{
            sendResponse(200, json_encode(Patient::deletePatient($queries["id"])), "application/json");
        }
    } catch (Exception $e){
        sendResponse(200, $e->getMessage(), "text/html");
    }
} else {
    sendResponse(405, "Method Not Allowed", "text/html");
}