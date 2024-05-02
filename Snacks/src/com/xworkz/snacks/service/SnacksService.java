package com.xworkz.snacks.service;

import com.xworkz.snacks.Dto.SnacksDto;

public interface SnacksService {
    boolean validateAndSave(SnacksDto snacksDto);
}
