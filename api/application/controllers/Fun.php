<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Fun
 *
 * @author sea_s
 */
class Fun extends CI_Controller {
    
    public function zhaohuimima(){
        
        $this->load->view("zhaohuimima.html");
    }
    
    public function tongzhi(){
        echo "南方网通APP正式运营！";
    }
    
}
