<?php   
    include "../api.php";
    include "../../models/patient.php";

 header("Access-Control-Allow-Origin: *");
 if($_SERVER["REQUEST_METHOD"] === "GET"){
     try{
         sendResponse(200, json_encode(Patient::getAllPatient()), "application/json");
     } catch (Exception $e){
         sendResponse(200, $e->getMessage(), "text/html");
     }
 } else {
     sendResponse(405, "Method Not Allowed", "text/html");
 }