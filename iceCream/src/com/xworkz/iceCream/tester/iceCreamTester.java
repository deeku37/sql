package com.xworkz.iceCream.tester;
import com.xworkz.iceCream.constant.iceCreamName;
import com.xworkz.iceCream.dto.iceCreamDto;
import com.xworkz.iceCream.service.iceCreamService;
import com.xworkz.iceCream.service.iceCreamServiceImplements;

public class iceCreamTester {
    public static void main(String[] args) {
        IceCreamDto iceCreamDto = new IceCreamDto(IceCreamName.KULFI.toString(),"Badam", 10);
        // cartoonsDto.setCartoonName();
        System.out.println(iceCreamDto);

        iceCreamService cartoonsServiceImplements =new  IceCreamServiceImplements();
        iceCreamServiceImplements.validateAndSave(iceCreamDto);
    }

}

