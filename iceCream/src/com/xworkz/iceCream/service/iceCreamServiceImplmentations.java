package com.xworkz.iceCream.service;
import  com.xworkz.icecream.dto.IceCreamDto;

public class iceCreamServiceImplmentations  implements iceCreamService{
    @Override
    public boolean validateAndSave(IceCreamDto iceCreamDto){
            if(iceCreamDto != null){
                System.out.println("not null" );
                return  true;
            }
            return false;
        }

    }
}
