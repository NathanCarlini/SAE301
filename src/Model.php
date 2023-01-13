<?php
namespace App;
use \PDO;
use App\AllGuitar;
use App\Guitar;
use App\Gamme;
use App\Retailler;
use App\Couleur;
use App\Spec;
use App\More;

class Model{
   
    private $cnx;
    
    public function __construct(){
        $this->cnx = new PDO("mysql:host=mmi.unilim.fr;dbname=carlini1", "carlini1","carlini1");
    }
    //Fonction + requête de try par catégorie
    public function getGuitarsByType($type){
        $tab = [];
        $this->cnx ->query ('SET CHARACTER SET utf8');
        $answer = $this->cnx->query("SELECT nom, prix, idgamme, idTypeInstrument,nomImageInstrument, couleur.libelle FROM liencouleurinstrument INNER JOIN instrument USING (idInstrument) LEFT JOIN TypeInstrument USING (idTypeInstrument) INNER JOIN couleur ON couleur.idCouleur= liencouleurinstrument.idCouleur WHERE TypeInstrument.nomType = '$type' Group BY instrument.nom; ");
        $res = $answer->fetchALL(PDO::FETCH_OBJ); 
        foreach($res as $value){
            $obj = new AllGuitar(
                $value->nom,
                $value->prix,
                $value->idgamme,
                $value->nomImageInstrument,
                $value->idTypeInstrument,
                $value->libelle
            );
            array_push($tab,$obj);
        }
        return $tab;   
    }
    //Fonction + Requête de trie par gamme
    public function getGuitarByGamme($gamme){
        $tab =[];
        $this->cnx ->query ('SET CHARACTER SET utf8');
        $answer = $this->cnx->query("SELECT DISTINCT libelle FROM gamme left Join instrument USING (idgamme) Left Join TypeInstrument USING (idTypeInstrument) WHERE TypeInstrument.nomType='$gamme'");
        $res = $answer->fetchALL(PDO::FETCH_OBJ); 
        foreach($res as $value){
            $obj = new Gamme(
                $value->libelle
            );
            array_push($tab,$obj);
        }
        return $tab;   
    }
    public function getGuitarByColor($couleur){
        $tab =[];
        $this->cnx ->query ('SET CHARACTER SET utf8');
        $answer = $this->cnx->query("SELECT DISTINCT couleur.libelle, couleur.idCouleur FROM couleur LEFT JOIN liencouleurinstrument USING (idcouleur) LEFT JOIN instrument USING (idInstrument) LEFT JOIN TypeInstrument USING (idTypeInstrument); ");
        $res = $answer->fetchALL(PDO::FETCH_OBJ); 
        foreach($res as $value){
            $obj = new Couleur(
                $value->libelle,
                $value->idCouleur
            );
            array_push($tab,$obj);
        }
        return $tab;   
    }
    public function getOneGuitar($name,$color){
        $tab =[];
        $this->cnx ->query ('SET CHARACTER SET utf8');
        $answer = $this->cnx->query("SELECT instrument.idInstrument,idTypeInstrument,nom, prix, reference, nomImageInstrument, couleur.libelle from instrument INNER JOIN liencouleurinstrument ON liencouleurinstrument.idInstrument = instrument.idInstrument INNER JOIN couleur on couleur.idCouleur = liencouleurinstrument.idCouleur where nom = '$name' and libelle='$color'; ");
        $res = $answer->fetchALL(PDO::FETCH_OBJ); 
        foreach($res as $value){
            $obj = new Guitar(
                $value->idInstrument,
                $value->idTypeInstrument,
                $value->nom,
                $value->reference,
                $value->prix,
                $value->nomImageInstrument,
                $value->libelle
            );
            array_push($tab,$obj);
        }
        return $tab;
    }
    public function getRetailler(){
        $tab=[];
        $this->cnx ->query ('SET CHARACTER SET utf8');
        $answer = $this->cnx->query("SELECT * FROM `magasin` ");
        $res = $answer->fetchALL(PDO::FETCH_OBJ); 
        foreach($res as $value){
            $obj = new Retailler(
                $value->nom,
                $value->adresse,
                $value->codePostal,
                $value->description,

            );
            array_push($tab,$obj);
        }
        return $tab;
    }
    public function getMore(){
        $tab=[];
        $this->cnx ->query ('SET CHARACTER SET utf8');
        $answer = $this->cnx->query("SELECT nom, prix, nomImageInstrument, couleur.libelle FROM liencouleurinstrument INNER JOIN instrument USING (idInstrument) LEFT JOIN TypeInstrument USING (idTypeInstrument) INNER JOIN couleur ON couleur.idCouleur= liencouleurinstrument.idCouleur ORDER BY RAND() LIMIT 3; ");
        $res = $answer->fetchALL(PDO::FETCH_OBJ); 
        foreach($res as $value){
            $obj = new More(
                $value->nom,
                $value->prix,
                $value->nomImageInstrument,
                $value->libelle,

            );
            array_push($tab,$obj);
        }
        return $tab;
    }


    public function getSpec($nom){
        $tab=[];
        $this->cnx ->query ('SET CHARACTER SET utf8');
        $answer = $this->cnx->query("SELECT micro.libelle AS micro, controle.nombre, controle.libelle AS Ctrl, couleurmateriel.libelle AS couleurMateriel, tuner.marque, materiau.libelle, construction.libelle AS construction, nombrefrette.nombre AS frette FROM instrument LEFT JOIN micro USING (idMicro) LEFT JOIN controle USING (idControle) LEFT JOIN couleurmateriel USING (idCouleurMateriel) LEFT JOIN tuner USING (idTuners) LEFT JOIN materiau USING (idMateriau) LEFT JOIN construction USING (idConstruction) LEFT JOIN nombrefrette USING (idNombreFrette)  where instrument.nom = '$nom'; ");
        $res = $answer->fetchALL(PDO::FETCH_OBJ); 
        foreach($res as $value){
            $obj = new Spec(
                $value->micro,
                $value->nombre,
                $value->Ctrl,
                $value->couleurMateriel,
                $value->marque,
                $value->libelle,
                $value->construction,
                $value->frette
            );
            array_push($tab,$obj);
        }
        return $tab;

    }

    }
    
