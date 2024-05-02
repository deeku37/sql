package com.xworkz.cake.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class CakeDto {
    private String cakeName;
    private String cakeShape;
    private int cakePrice;


    @Override
    public String toString(){
        return "cakeName" + cakeName + " , " + "CakeShape" +cakeShape+ " , " + "CakePrice" +cakePrice ;
    }
}

