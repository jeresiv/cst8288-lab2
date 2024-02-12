/*
 * Main
 */
package org.cst8288Lab2;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Properties;

/**
 * App
 */
public class App {
    /**
     * Parses the file: bulk-import.csv
     * Validates each item in each row and updates the database accordingly.
     * @param args - 
     */
    public static void main(String[] args) {
        //Ensure that you use the Properties class to load values from the database.properties file
        Properties dbConnection = new Properties();
        
        //Preserve this input path
        try (InputStream in = new FileInputStream("./app/data/database.properties")){
            try(BufferedReader br = new BufferedReader(new InputStreamReader(in))){
                String out;
                while ((out = br.readLine()) != null){
                    System.out.println(out.toString());
                }
            }
        } catch (IOException e){
            e.printStackTrace();
        }

        //Preserve this input path
        try (InputStream in = new FileInputStream("./app/data/bulk-import.csv")){
            try(BufferedReader br = new BufferedReader(new InputStreamReader(in))){
                String out;
                while ((out = br.readLine()) != null){
                    System.out.println(out.toString());
                }
            }
        } catch (IOException e){
            e.printStackTrace();
        }       
    }
}
