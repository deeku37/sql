package com.xworkz.snacks.service;

import com.xworkz.snacks.Dto.SnacksDto;

public class SnacksServiceImpletations {

    @Override
    public boolean validateAndSave(SnacksDto snacksDto) {
        if(snacksDto != null){
            System.out.println("not null" );
            return  true;
        }
        return false;
    }
}
