<?php
    class Sql{
        private static $instances = [];
        
        private $servername = "localhost";
        private $username = "root";
        private $password = "user123";
        private $database = "database_assignment";

        public static function getInstance(): Sql
        {
            $cls = static::class;
            if (!isset(self::$instances[$cls])) {
                self::$instances[$cls] = new static();
            }

            return self::$instances[$cls];
        }

        public function getData($query){
            $conn = new mysqli($this->servername, $this->username, $this->password, $this->database);

            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

            $result = $conn->query($query);

            $conn->close();
            return $result;
        }

        public function updateData($query){
            $conn = new mysqli($this->servername, $this->username, $this->password, $this->database);

            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

            if ($conn->query($query) === TRUE) {
                $conn->close();
                return true;
            } else {
                $conn->close();
                return false;
            }
        }

    }
?>