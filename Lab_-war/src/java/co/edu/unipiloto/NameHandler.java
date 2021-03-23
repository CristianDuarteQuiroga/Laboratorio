/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.unipiloto;

import java.time.LocalDate;
import java.time.LocalTime;
import java.time.Period;
import java.time.format.DateTimeFormatter;

/**
 *
 * @author Cristian Duarte
 */
public class NameHandler {
    private String name, birth;
    private int hour; 

    public NameHandler() {
        name = null;
        birth = null;
        
        hour = LocalTime.now().getHour();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public int getAge() {
        return Period.between(LocalDate.parse(birth, DateTimeFormatter.ofPattern("d/M/y")),LocalDate.now()).getYears();
        //LocalDate.now().getYear() - Integer.parseInt(birth.split("/")[2]);
    }

    public int getHour() {
        
        return hour;
    }
    
    
}
