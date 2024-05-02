package com.xworkz.coffeShop.service;

import com.xworkz.coffeShop.dto.CoffeShopDto;

public class CoffeShopServiceImpletations {

    public class CoffeShopServiceImpletations implements CoffeShopService  {

        @Override
        public boolean validateAndSave(CoffeShopDto coffeShopDto) {
            if(coffeShopDto != null){
                System.out.println("not null" );
                return  true;
            }
            return false;
        }
    }

}
