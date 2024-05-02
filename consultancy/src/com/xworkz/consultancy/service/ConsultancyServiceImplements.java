package com.xworkz.consultancy.service;

import com.xworkz.consultancy.dto.ConsultancyDto;

public class ConsultancyServiceImplements {

    public class ConsultancyServiceImplements implements ConsultancyService {

        @Override
        public boolean validateAndSave(ConsultancyDto consultancyDto) {
            if (consultancyDto != null) {
                System.out.println("The consultancy data is not null");
                return true;
            }
            return false;
        }
    }

