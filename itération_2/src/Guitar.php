<?php
namespace App;

class Guitar{
    private $name;
    private $price;
    private $type;
    private $pict;

    public function __construct($name, $price , $type, $pict) {
        $this->name = $name;
        $this->price = $price;
        $this->type = $type;
        $this->pict = $pict;
    }

    /**
     * Get the value of name
     */ 
    public function getName():string
    {
        return $this->name;
    }

    /**
     * Get the value of price
     */ 
    public function getPrice():float
    {
        return $this->price;
    }

    /**
     * Get the value of type
     */ 
    public function getType():string
    {
        return $this->type;
    }

    /**
     * Get the value of pict
     */ 
    public function getPict():string
    {
        return $this->pict;
    }
}