<?php
include "../api.php";
include "../../models/patient.php";

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, OPTIONS");

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $temp = json_decode(file_get_contents("php://input"));
    try {
        if (Patient::addPatient($temp)) {
            sendResponse(200, "success", "text/html");
        } else {
            sendResponse(200, "fail", "text/html");
        }
    } catch (Exception $e) {
        sendResponse(200, $e->getMessage(), "text/html");
    }
} else {
    sendResponse(405, "Method Not Allowed", "text/html");
}
