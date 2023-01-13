<?php

namespace App;

class Spec{
    private $mic;
    private $nbrCtrl;
    private $ctrl;
    private $mC; //materialCouleur;
    private $tun;//tuner;
    private $mat;//material;
    private $const;//Construction;
    private $frette;

    public function __construct($mic,$nbrCtrl,$ctrl,$mC,$tun,$mat,$const,$frette){
        $this->mic=$mic;
        $this->nbrCtrl = $nbrCtrl;
        $this->ctrl=$ctrl;
        $this->mC=$mC;
        $this->tun=$tun;
        $this->mat=$mat;
        $this->const=$const;
        $this->frette=$frette;
    }


    /**
     * Get the value of mic
     */ 
    public function getMic():string
    {
        return $this->mic;
    }

    /**
     * Get the value of nbrCtrl
     */ 
    public function getNbrCtrl():int
    {
        return $this->nbrCtrl;
    }

    /**
     * Get the value of control
     */ 
    public function getCtrl():string
    {
        return $this->ctrl;
    }

    /**
     * Get the value of mC
     */ 
    public function getMC():string
    {
        return $this->mC;
    }

    /**
     * Get the value of tun
     */ 
    public function getTun():string
    {
        return $this->tun;
    }

    /**
     * Get the value of mat
     */ 
    public function getMat():string
    {
        return $this->mat;
    }

    /**
     * Get the value of const
     */ 
    public function getConst():string
    {
        return $this->const;
    }

    /**
     * Get the value of frette
     */ 
    public function getFrette():int
    {
        return $this->frette;
    }
}