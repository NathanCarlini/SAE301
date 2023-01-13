<?php

namespace App;

class Couleur{
    private $couleur;
    private $id;

    public function __construct($couleur,$id){
        $this->couleur=$couleur;
        $this->id=$id;
    }

    /**
     * Get the value of couleur
     */ 
    public function getCouleur():string
    {
        return $this->couleur;
    }

    /**
     * Get the value of id
     */ 
    public function getId():int
    {
        return $this->id;
    }
}