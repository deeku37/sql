package com.xworkz.coffeShop.tester;

import com.xworkz.coffeShop.constant.CoffeShopName;
import com.xworkz.coffeShop.dto.CoffeShopDto;
import com.xworkz.coffeShop.service.CoffeShopService;
import com.xworkz.coffeShop.service.CoffeShopServiceImpletations;
public class CoffeShopTester {

        public static void main(String[] args) {
            CoffeShopDto coffeShopDto = new CoffeShopDto(CoffeShopName.STARBUGS.toString(),"square", 700);
            // coffeShopDto.setCoffeShopName();
            System.out.println(coffeShopDto);

            CoffeShopService coffeShopServiceImpletations =new CoffeShopServiceImpletations();
            coffeShopServiceImpletations.validateAndSave(coffeShopDto);
        }
    }



}
