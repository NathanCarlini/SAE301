<?php
namespace App;
class Retailler{
    private $name;
    private $adresse;
    private $codepostal;
    private $description;

    public function __construct($name,$adresse,$codepostal,$description){
        $this->name=$name;
        $this->adresse=$adresse;
        $this->codepostal=$codepostal;
        $this->description=$description;
    }

    /**
     * Get the value of name
     */ 
    public function getName():string
    {
        return $this->name;
    }

    /**
     * Get the value of adress
     */ 
    public function getAdresse():string
    {
        return $this->adresse;
    }

    /**
     * Get the value of codepostal
     */ 
    public function getCodepostal():int
    {
        return $this->codepostal;
    }

    /**
     * Get the value of description
     */ 
    public function getDescription():string
    {
        return $this->description;
    }
}