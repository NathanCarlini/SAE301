<?php 
/*indique où "vit" ce fichier */


namespace App\Controller;
/* le nom de la classe doit êtrecohérent avec le nom du fichier */

use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;

use \PDO;

use App\AllGuitar;
use App\Guitar;
use App\Gamme;
use App\Retailler;
use App\Model;
use App\More;
use App\Spec;


class GuitarController extends AbstractController {

    /**
     * @Route("/")
     */
    public function renderAccueil():response{
        return $this->render('./accueil.html.twig');
    }
    /**
     * @Route("/CheckOut/{id}")
     */
    public function renderCart($id):response{
        if ($id=='Info'){
            $template = './payement/info_payement.html.twig';
        }
        else if($id =='Card'){
            $template ='./payement/card_payement.html.twig';
        }
        return $this->render('./noFilter.html.twig',['templates'=>$template]);
    }
    /**
     * @Route("/item/{nom}/{couleur}")
     */
    public function renderItem(Model $bdd, Model $tb,Model $spec,$nom,$couleur):response
    {   
        $info = $spec->getSpec($nom);
        $data = $bdd ->getOneGuitar($nom,$couleur);
        $tab =$tb->getMore();
        $template = './item.html.twig';
        $more = './cards/more.html.twig';
        return $this->render('./noFilter.html.twig',['templates'=>$template,'liste'=>$data,'more'=>$more,'specs'=>$info,'More'=>$tab]);
    }
    /**
     * @Route("/Disponiblité")
     */
    public function renderMap(Model $bdd):response{
        $data = $bdd ->getRetailler();
        $retailler = './cards/retailler.html.twig';
        $template = './map.html.twig';
        return $this->render('./noFilter.html.twig',['templates'=>$template,'retailler'=>$retailler,'liste'=>$data]);
    }
    /**
     * @Route("/Panier")
     */
    public function renderPanier(Model $bdd):response{
        $data = $bdd->getMore();
        $template = './payement/cart.html.twig';
        $also ='./cards/also.html.twig';
        $more = './cards/more.html.twig';
        return $this->render('./noFilter.html.twig',['templates'=>$template,'also'=>$also,'more'=>$more,'More'=>$data]);
    }
    
    
    
    /**
     * @Route("/{categorie}") methods={"GET"}
     */
    public function renderCategorie(Model $bdd, Model $fg, Model $fc,$categorie):response //fg->filter gamme; fc->filter couleur; fd->
    {      
        $data = $bdd->getGuitarsByType($categorie);
        $filterGamme = $fg->getGuitarByGamme($categorie);
        $filterCouleur = $fc->getGuitarByColor($categorie);
        $template = './cards/product.html.twig';
        $gamme= './filter/filter_gamme.html.twig';
        $color='./filter/filter_color.html.twig';
        return $this->render('./base.html.twig',['templates'=>$template,'color'=>$color,'gamme'=>$gamme,'liste'=>$data,'Gamme'=>$filterGamme,'Couleur'=>$filterCouleur]);
    }
    
    

}
