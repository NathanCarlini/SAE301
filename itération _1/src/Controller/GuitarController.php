<?php 
/*indique où "vit" ce fichier */


namespace App\Controller;
/* le nom de la classe doit êtrecohérent avec le nom du fichier */

use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use \PDO;
use App\Guitar;

class GuitarController extends AbstractController {
    private $guitars = [];
    public function getDatabaseConnection(){ 
        $cnx = new PDO("mysql:host=mmi.unilim.fr;dbname=carlini1", "carlini1","carlini1");
        $cnx ->query ('SET CHARACTER SET utf8');
        $answer = $cnx->query("SELECT nom, prix, idgamme, idTypeInstrument,nomImageInstrument, couleur.libelle FROM liencouleurinstrument INNER JOIN instrument USING (idInstrument) LEFT JOIN TypeInstrument USING (idTypeInstrument) INNER JOIN couleur ON couleur.idCouleur= liencouleurinstrument.idCouleur;");
        $res = $answer->fetchALL(PDO::FETCH_OBJ); 
        foreach($res as $value){
            $obj = new Guitar(
               $value->nom,
               $value->prix,
                $value->idTypeInstrument,
                $value->nomImageInstrument
            );
            array_push($this->guitars,$obj);
        }
    }
    /**
     * @Route("/")
     */
    public function renderItems():response{
        $this->getDatabaseConnection();
        $template = './product.html.twig';
        return $this->render('./base.html.twig',['templates'=>$template,'liste'=>$this->guitars]);
    }
   

    
}
