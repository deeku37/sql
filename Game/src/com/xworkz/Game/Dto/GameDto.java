package com.xworkz.Game.Dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor

public class GameDto {
    private String gameName;
    private int noOfPlayers;
    private String gameType;

    @Override
      public String toString(){
        return "gameName" + gameName + " , " + "noOfPlayers" +noOfPlayers+ " , " + "gameType" +gameType ;

    }


}
