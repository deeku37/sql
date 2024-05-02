package com.xworkz.cake.tester;
import com.xworkz.cake.constant.CakeName;
import com.xworkz.cake.dto.CakeDto;
import com.xworkz.cake.service.CakeService;
import com.xworkz.cake.service.CakeServiceImpletations;

public class CakeTester {

    public static void main(String[] args) {
        CakeDto cakeDto = new CakeDto(CakeName.TRUFFLE.toString(),"square", 700);
        // cakeDto.setCartoonName();
        System.out.println(cakeDto);

        CakeService cakeServiceImplements =new CakeServiceImpletations();
        cakeServiceImplements.validateAndSave(cakeDto);
    }
}
