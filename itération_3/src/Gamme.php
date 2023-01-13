<?php

namespace App;

class Gamme{
    private $libelle;

    public function __construct($libelle){
        $this->libelle=$libelle;
    }

    /**
     * Get the value of libelle
     */ 
    public function getLibelle():string
    {
        return $this->libelle;
    }
}