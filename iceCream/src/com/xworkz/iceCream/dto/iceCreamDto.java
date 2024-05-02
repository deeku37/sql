package com.xworkz.iceCream.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor

public class iceCreamDto {
    private String iceCreamName;
    private String iceCreamFalvour;
    private int iceCreamPrice;
}
@Override
public String toString(){
return "iceCreamName" + iceCreamName + " , " + "geticeCreamFalvour" + iceCreamFalvour + " , "+ "iceCreamPrice" + iceCreamPrice;

}
}
