package com.xworkz.Game.Service;
import com.xworkz.Game.Dto.GameDto;
import com.xworkz.Game.Dto.GameDto;
public class GameServiceImplmentations {
    @Override
    public boolean validateAndSave(GameDto gameDto) {
        if (gameDto != null) {
            System.out.println("The game is not null");
            return true;
        }
        return false;
    }
}
