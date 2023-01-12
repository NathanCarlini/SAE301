<?php
namespace App;
use \PDO;
use App\AllGuitar;
use App\Guitar;
use App\Gamme;
use App\Couleur;

class Model{
   
    private $cnx;
    
    public function __construct(){
        $this->cnx = new PDO("mysql:host=mmi.unilim.fr;dbname=carlini1", "carlini1","carlini1");
    }
    //Fonction + requête de try par catégorie
    public function getGuitarsByType($type){
        $tab = [];
        $this->cnx ->query ('SET CHARACTER SET utf8');
        $answer = $this->cnx->query("SELECT nom, prix, idgamme, idTypeInstrument,nomImageInstrument ,nomImageInstrument, couleur.libelle FROM liencouleurinstrument INNER JOIN instrument USING (idInstrument) LEFT JOIN TypeInstrument USING (idTypeInstrument) INNER JOIN couleur ON couleur.idCouleur= liencouleurinstrument.idCouleur WHERE TypeInstrument.nomType = '$type' Group BY instrument.nom; ");
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
        $answer = $this->cnx->query("SELECT DISTINCT couleur.libelle FROM couleur LEFT JOIN liencouleurinstrument USING (idcouleur) LEFT JOIN instrument USING (idInstrument) LEFT JOIN TypeInstrument USING (idTypeInstrument) WHERE TypeInstrument.nomType= '$couleur'; ");
        $res = $answer->fetchALL(PDO::FETCH_OBJ); 
        foreach($res as $value){
            $obj = new Couleur(
                $value->libelle
            );
            array_push($tab,$obj);
        }
        return $tab;   
    }
    public function getOneGuitar($name,$color){
        $tab =[];
        $this->cnx ->query ('SET CHARACTER SET utf8');
        $answer = $this->cnx->query("SELECT idTypeInstrument,nom, prix, reference, nomImageInstrument, couleur.libelle from instrument INNER JOIN liencouleurinstrument ON liencouleurinstrument.idInstrument = instrument.idInstrument INNER JOIN couleur on couleur.idCouleur = liencouleurinstrument.idCouleur where nom = '$name' and libelle='$color'; ");
        $res = $answer->fetchALL(PDO::FETCH_OBJ); 
        foreach($res as $value){
            $obj = new Guitar(
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
    
}