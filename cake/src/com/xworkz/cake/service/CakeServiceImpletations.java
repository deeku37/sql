package com.xworkz.cake.service;

import com.xworkz.cake.dto.CakeDto;

public class CakeServiceImpletations implements CakeService  {

    @Override
    public boolean validateAndSave(CakeDto cakeDto) {
        if(cakeDto != null){
            System.out.println("not null" );
            return  true;
        }
        return false;
    }
}
