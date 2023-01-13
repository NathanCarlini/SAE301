<?php
namespace App;

class More{
    private $name;
    private $pict;
    private $color;
    private $price;

    public function __construct($name,$price,$pict,$color){
        $this->name=$name;
        $this->price=$price;
        $this->pict=$pict;
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
     * Get the value of pict
     */ 
    public function getPict():string
    {
        return $this->pict;
    }

    /**
     * Get the value of color
     */ 
    public function getColor():string
    {
        return $this->color;
    }

    /**
     * Get the value of price
     */ 
    public function getPrice():int
    {
        return $this->price;
    }
}