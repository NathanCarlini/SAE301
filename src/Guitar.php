<?php
namespace App;

class Guitar{
    private $id;
    private $couleur;
    private $name;
    private $reference;
    private $pict;
    private $price;

    public function __construct($id,$name, $reference, $price, $pict,$couleur){
        $this->id=$id;
        $this->name=$name;
        $this->reference=$reference;
        $this->price=$price;
        $this->pict=$pict;
        $this->couleur=$couleur;
    }

    /**
     * Get the value of id
     */ 
    public function getId():int
    {
        return $this->id;
    }

    /**
     * Get the value of name
     */ 
    public function getName():string
    {
        return $this->name;
    }

    /**
     * Get the value of reference
     */ 
    public function getReference():string
    {
        return $this->reference;
    }

    /**
     * Get the value of pict
     */ 
    public function getPict():string
    {
        return $this->pict;
    }

    /**
     * Get the value of price
     */ 
    public function getPrice():int
    {
        return $this->price;
    }
    /**
     * Get the value of couleur
     */ 
    public function getCouleur():string
    {
        return $this->couleur;
    }
}