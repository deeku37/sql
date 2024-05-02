package com.xworkz.cartoons.dto;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor


public class CartoonsDto {
    private String cartoonsName;
    private String cartoonsCharacterName;
    private String numberOfCharacters;

    @Override
    public String toString(){
        return "cartoonsName" + cartoonsName + " , " + "getCartoonsCharacterName" +cartoonsCharacterName+ " , " + "numberOfCharacters" +numberOfCharacters;
    }
}
