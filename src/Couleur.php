<?php

namespace App;

class Couleur{
    private $couleur;

    public function __construct($couleur){
        $this->couleur=$couleur;
    }

    /**
     * Get the value of couleur
     */ 
    public function getCouleur():string
    {
        return $this->couleur;
    }
}