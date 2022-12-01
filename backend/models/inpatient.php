<?php
    include "db-config.php";

    class Inpatient
    {
        public static function addInpatientInfo($inpatient){
            $query = "INSERT INTO `inpatient` (`inpatient_code`, `date_of_admission`, `date_of_discharge`, `date_start_treatment`, `date_end_treatment`, `sickroom`, `diagnosis`, `patient_id`, `treatment_NO`) VALUES (NULL, '" . $inpatient->date_of_admission . "', '" . $inpatient->date_of_discharge . "', '" . $inpatient->date_start_treatment . "', '" . $inpatient->date_end_treatment . "', '" . $inpatient->sickroom  . "', '" . $inpatient->diagnosis . "', '" . $inpatient->patient_id . "', '" . $inpatient->treatment_NO . "')";
            $result = Sql::getInstance()->updateData($query);
            echo $query;
            return $result;
        }
    }

