<?php
    include "db-config.php";

    class Account{

        public static function getAllUser(){
            $query = "SELECT * FROM user";
            $temp = Sql::getInstance()->getData($query);
            $temp_array = array();

            if ($temp->rowCount() > 0) {
                while ($row = $temp->fetch_assoc()) {
                    $temp_array[] = $row;
                }
            }

            return $temp_array;
        }

        public static function login($user){
            // echo $user->username;
            $query = "SELECT * FROM user WHERE usename = '".$user->username."' and password = '".$user->password."'";

            $result = Sql::getInstance()->getData($query);
            if ($result->num_rows > 0){
                return $result->fetch_assoc();
            } else {
                return new class{};
            }
        }

        // public static function signup($user){
        //     $query = "INSERT INTO `customer`(`userName`, `password`, `bDate`, `phoneNum`) VALUES ('" . $user->userName . "', '" . $user->password . "', '" . date("Y-m-d") . "', '" . $user->phoneNum . "');";
        //     $result = Sql::getInstance()->updateData($query);
        //     return $result;
        // }

        // public static function update($user){
        //     $query = "UPDATE `customer` SET `phoneNum` = '".$user->phoneNum."', `fullName` = '".$user->fullName."', `address` = '".$user->address."', `password` = '".$user->password."' WHERE `customer`.`id` = ".$user->id."; ";
        //     $result = Sql::getInstance()->updateData($query);
        //     return $result;
        // }

        // public static function delete($user){
        //     $query = "DELETE FROM `customer` WHERE `customer`.`id` = ".$user->id."; ";
        //     $result = Sql::getInstance()->updateData($query);
        //     return $result;
        // }

        // public static function block($user){
        //     $query = "UPDATE `customer` SET `block` = true WHERE `customer`.`id` = ".$user->id."; ";
        //     $result = Sql::getInstance()->updateData($query);
        //     return $result;
        // }

    }
?>