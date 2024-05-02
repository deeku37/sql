package com.xworkz.snacks.Tester;


import com.xworkz.snacks.Dto.SnacksDto;
import com.xworkz.snacks.service.SnacksService;
import com.xworkz.snacks.service.SnacksServiceImpletations;

    public class snacksTester {

        public static void main(String[] args) {
            SnacksDto snacksDto = new SnacksDto(snacksName:"CHIPS".toString(),"POTATO", 70);
            // snacksDto.setSnacksName();
            System.out.println(snacksDto);

            SnacksService snacksServiceImplements =new SnacksServiceImpletations();
            snacksServiceImplements.validateAndSave(SnacksDto);
        }
    }


