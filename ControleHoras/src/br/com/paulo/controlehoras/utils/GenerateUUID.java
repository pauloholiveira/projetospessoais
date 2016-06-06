package br.com.paulo.controlehoras.utils;

import java.util.Date;
import java.util.UUID;
 
public class GenerateUUID {
 
    public static String keyValidation() {
 
        UUID uuid = UUID.randomUUID();
        return uuid.toString().toUpperCase().replace('-', 'X')
                + String.valueOf((new Date()).getTime());
    }
    
    public static String keyValidation(String baseString) {
        UUID uuid = UUID.fromString(baseString);
        
        return uuid.toString().toUpperCase().replace('-', 'X');
    }
}