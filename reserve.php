<?php

    header('Content-Type: application/json');
    header('Access-Control-Allow-Origin: *');
    require_once 'bootstrap.php';
    $result = $entityManager->createQuery("SELECT r FROM Region r")->getResult();
    
    $i = 0;
    foreach($result as $r)
    {
        $tabRegion = [
            "id"=>$r->getId(),
            "nom"=>$r->getNom()
        ];
        $data[$i] = $tabRegion;
        $i++;
    }
    echo json_encode($data);

//echo json_encode($result);
// class ServiceController{


//     public function getAll()
//     {
        
//     require_once './bootstrap.php';

//         $result = $entityManager->createQuery("SELECT r FROM Region r")->getResult();
//         // foreach($result as $r)
//         // {
//         // echo $r->getId();
//         // echo "<br>";
//         // echo $r->getNom();
//         // echo "<br>";
//         // }
//         echo json_encode($result);
//     }
// }

?>