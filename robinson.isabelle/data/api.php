<?php

function makeConn() {
   include_once "auth.php";
   try {
      $conn = new PDO(...Auth());
      $conn->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
      return $conn;
   } catch(PDOException $e) {
      die('{"error":"'.$e->getMessage().'"}');
   }
}


// $r = PDO result
function fetchAll($r) {
   $a = [];
   while($row = $r->fetch(\PDO::FETCH_OBJ)) $a[] = $row;
   return $a;
}


/*
$c = connection
$ps = prepared statement
$p = parameters
*/
function makeQuery($c,$ps,$p,$makeResults=true) {
   try {
      if(count($p)) {
         $stmt = $c->prepare($ps);
         $stmt->execute($p);
      } else {
         $stmt = $c->query($ps);
      }

      $r = $makeResults ? fetchAll($stmt) : [];

      return [
         // "statement"=>$ps,
         // "params"=>$p,
         "result"=>$r
      ];
   } catch(PDOException $e) {
      return ["error"=>"Query Failed: ".$e->getMessage()];
   }
}


function makeStatement($data) {
   $c = makeConn();
   $t = $data->type;
   $p = $data->params;

   switch($t) {
      case "users_all":
         return makeQuery($c, "SELECT * FROM `users`", $p);
      case "animals_all":
         return makeQuery($c, "SELECT * FROM `animals`", $p);
      case "locations_all":
         return makeQuery($c, "SELECT * FROM `locations`", $p);

      case "user_by_id":
         //return makeQuery($c, "SELECT * FROM `track_202230_users` WHERE `id` = ?", $p);
         return makeQuery($c, "SELECT `id`,`name`,`email`,`img`,`username` FROM `users` WHERE `id` = ?", $p);
      case "animal_by_id":
         return makeQuery($c, "SELECT * FROM `animals` WHERE `id` = ?", $p);
      case "location_by_id":
         return makeQuery($c, "SELECT * FROM `locations` WHERE `id` = ?", $p);

      case "animals_by_user_id":
         return makeQuery($c, "SELECT * FROM `animals` WHERE `user_id` = ?", $p);
      case "locations_by_animal_id":
         return makeQuery($c, "SELECT * FROM `locations` WHERE `animal_id` = ?", $p);






      case "recent_animal_locations":
         return makeQuery($c,"SELECT *
            FROM `animals` a
            JOIN (
               SELECT lg.*
               FROM `locations` lg
               WHERE lg.id = (
                  SELECT lt.id
                  FROM `locations` lt
                  WHERE lt.animal_id = lg.animal_id
                  ORDER BY lt.date_create DESC
                  LIMIT 1
               )
            ) l
            ON a.id = l.animal_id
            WHERE a.user_id = ?
            ORDER BY l.animal_id, l.date_create DESC
         ", $p);




      /* INSERT */


      case "insert_user":
         $r = makeQuery($c,"SELECT id FROM `users` WHERE `username`=? OR `email` = ?", [ $p[0], $p[1] ]);
         if(count($r['result']))
            return ["error"=>"Username or Email already exists"];

         makeQuery($c,"INSERT INTO
            `users`
            (`username`,`email`,`password`,`img`,`date_create`)
            VALUES
            (?, ?, md5(?), 'https://via.placeholder.com/400/?text=USER', NOW())
            ", $p, false);
         return ["id"=>$c->lastInsertId()];

      case "insert_animal":
         makeQuery($c,"INSERT INTO
            `animals`
            (`user_id`,`name`,`type`,`breed`,`description`,`img`,`date_create`)
            VALUES
            (?, ?, ?, ?, ?, 'https://via.placeholder.com/400/?text=ANIMAL', NOW())
            ", $p, false);
         return ["id"=>$c->lastInsertId()];

      case "insert_location":
         makeQuery($c,"INSERT INTO
            `locations`
            (`animal_id`,`lat`,`lng`,`description`,`photo`,`icon`,`date_create`)
            VALUES
            (?, ?, ?, ?, 'https://via.placeholder.com/400/?text=PHOTO', 'https://via.placeholder.com/400/?text=ICON', NOW())
            ", $p, false);
         return ["id"=>$c->lastInsertId()];



      /* UPDATE */

      case "update_user":
         $r = makeQuery($c,"UPDATE
            `users`
            SET
               `name` = ?,
               `username` = ?,
               `email` = ?
            WHERE `id` = ?
            ",$p,false);
         if(isset($r['error'])) return $r;
         return ["result"=>"Success"];

      case "update_password":
         $r = makeQuery($c,"UPDATE
            `users`
            SET
               `password` = md5(?)
            WHERE `id` = ?
            ",$p,false);
         if(isset($r['error'])) return $r;
         return ["result"=>"Success"];

      case "update_animal":
         $r = makeQuery($c,"UPDATE
            `animals`
            SET
               `name` = ?,
               `type` = ?,
               `breed` = ?,
               `description` = ?
            WHERE `id` = ?
            ",$p,false);
         if(isset($r['error'])) return $r;
         return ["result"=>"Success"];

      case "update_location":
         $r = makeQuery($c,"UPDATE
            `locations`
            SET
               `description` = ?
            WHERE `id` = ?
            ",$p,false);
         if(isset($r['error'])) return $r;
         return ["result"=>"Success"];



      /* DELETE */

      case "delete_animal":
         $r = makeQuery($c,"DELETE FROM
            `animals`
            WHERE `id` = ?
            ",$p,false);
         if(isset($r['error'])) return $r;
         return ["result"=>"Success"];



      case "check_login":
         return makeQuery($c, "SELECT id from `users` WHERE `username` = ? AND `password` = md5(?)", $p);

      default:
         return ["error"=>"No Matched Type"];
   }
}



/*
"SELECT * FROM users",
"SELECT * FROM users WHERE id = ?",
"SELECT * FROM animals WHERE user_id = ?",
*/

$data = json_decode(file_get_contents("php://input"));

echo json_encode(
   makeStatement($data),
   JSON_NUMERIC_CHECK
);