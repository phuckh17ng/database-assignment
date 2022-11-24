<?php
    include "db-config.php";

    class Patient
    {
        public static function addPatient($patient){
            echo $patient->first_name;
            $query = "INSERT INTO `patient` VALUES (NULL, '" . $patient->first_name . "', '" . $patient->last_name . "', '" . $patient->date_of_birth . "', '" . $patient->gender . "', '" . $patient->address  . "', " . $patient->phone_number. ", '" . $patient->patient_type . "', '" . $patient->note . "', '" . $patient->admit_date . "')";
            echo $query;
            $result = Sql::getInstance()->updateData($query);
            return $result;
        }

        public static function getPatientById($index)
        {
            $query = "select * from patient";
            $temp = Sql::getInstance()->getData($query);
            $temp_array = array();
    
            if ($temp->num_rows > 0) {
                while ($row = $temp->fetch_assoc()) {
                    $temp_array[] = $row;
                }
            }
    
            return $temp_array;
        }
        public static function getAllPatient(){
            $query = "select * from patient";
            $temp = Sql::getInstance()->getData($query);
            $temp_array = array();
    
            if ($temp->num_rows > 0) {
                while ($row = $temp->fetch_assoc()) {
                    $temp_array[] = $row;
                }
            }
            return $temp_array;
        }
    
        public static function deletePatient($id)
        {
            $query = "DELETE FROM `patient` WHERE `patient`.`P_code` = " . $id;
            $result = Sql::getInstance()->updateData($query);
            return $result;
        }

        public static function searchPatient($str)
        {
            $query = "Select * FROM `patient` WHERE name like '%" . $str . "%'";
            $temp = Sql::getInstance()->getData($query);
            $temp_array = array();
    
            if ($temp->num_rows > 0) {
                while ($row = $temp->fetch_assoc()) {
                    $temp_array[] = $row;
                }
            }
            return $temp_array;
        }
    }
