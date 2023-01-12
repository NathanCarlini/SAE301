<?php
namespace App;

class AllGuitar{
    private $name;
    private $price;
    private $type;
    private $pict;
    private $id;
    private $color;

    public function __construct($name, $price , $type ,$pict,$id,$color) {
        $this->name = $name;
        $this->price = $price;
        $this->type = $type;
        $this->pict = $pict;
        $this->id= $id;
        $this->color=$color;
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

    public function getID():string
    {
        return $this->id;
    }

    /**
     * Get the value of color
     */ 
    public function getColor():string
    {
        return $this->color;
    }
}