/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tarea2compi2;

import java.io.StringReader;
import java.util.Scanner;

/**
 *
 * @author yefer
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws Exception {
        Scanner s = new Scanner(System.in);
        System.out.println("Escriba el numero binario");
        String texto = s.nextLine();
        AnalizadorLexicoT2 lexico = new AnalizadorLexicoT2(new StringReader(texto));
        AnalizadorSintacticoT2 sintactico = new AnalizadorSintacticoT2(lexico);
        sintactico.parse();
    }
    
}
