package com.xworkz.Game.Tester;

import com.xworkz.Game.Dto.GameDto;
import com.xworkz.Game.Constant.GameName;
import com.xworkz.Game.Dto.GameDto;
import com.xworkz.Game.Service.GameService;
import com.xworkz.Game.Service.GameServiceImplmentations;
public class GameTester {

        public static void main(String[] args) {
            GameDto gameDto = new GameDto(GameName.CHESS.toString(),2, "IndoorGame");

            System.out.println(gameDto);

            GameService GameService = new GameServiceImplmentations();
            boolean isValid = GameService.validateAndSave(gameDto);
        }
    }

