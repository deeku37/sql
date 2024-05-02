package com.xworkz.snacks.Dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SnacksDto {

    private String snacksName;
    private String type;
    private int snacksPrice;


    @Override
    public String toString(){
        return "snacksName" + snacksName + " , " + "type" +type+ " , " + "snacksPrice" +snacksPrice ;
    }
}

