<?php
    include "../api.php";
    include "../../models/patient.php";

    header("Access-Control-Allow-Origin: *");
    if($_SERVER["REQUEST_METHOD"] === "GET"){
        $queries = array();
        parse_str($_SERVER['QUERY_STRING'], $queries);

        sendResponse(200, json_encode(Patient::searchPatient($queries["search"])), "application/json");
    } else {
        sendResponse(405, "Method Not Allowed", "text/html");
    }