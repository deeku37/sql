package com.xworkz.Game.Service;

import com.xworkz.Game.Dto.GameDto;

public interface GameService {

    boolean validateAndSave(GameDto gameDto);
}
