package com.xworkz.coffeShop.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor

public class CoffeShopDto {

        private String coffeShopName;
        private String coffeShopLocation;
        private int coffeShopLocation;

        @Override
        public String toString(){
            return "coffeShopName" + coffeShopName + " , " + "coffeShopLocation" +coffeShopLocation+ " , " + "coffeShopLocation" +coffeShopLocation ;
        }
    }


