package com.xworkz.consultancy.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

    @Getter
    @Setter
    @AllArgsConstructor
    @NoArgsConstructor
    public class ConsultancyDto {

        private String consultancyType;
        private String consultancyName;
        private String leadConsultant;

        @Override
        public String toString() {
            return "Consultancy Type: " + consultancyType + ", Consultancy Name: " + consultancyName + ", Lead Consultant: " + leadConsultant;
        }
    }


