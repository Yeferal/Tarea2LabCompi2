package tarea2compi2;
import  java_cup.runtime. * ;

%%
%{
    //coidgo de usuario en sintaxis java
    

%}

    //directivas
%public 
%class AnalizadorLexicoT2
%cupsym SimbolosT2
%cup
%char
%line
%column
%full
//%ignorecase
//%unicode

    //expreciones regulares
Digito          = [0-1]
Numero          = {Digito} {Digito}*
Espacio         = [ " "\t\r\n]+
%%

<YYINITIAL> {
    {Espacio}                       {/*Ignore*/}
    {Digito}                        { /**System.out.println("Digito: "+yytext());**/ return new Symbol(SimbolosT2.DIGITO , yycolumn, yyline, new Double(yytext()));}
    "."                             { return new Symbol(SimbolosT2.PUNTO , yycolumn, yyline,yytext());}
    .                               {System.out.println("error Lexico: "+"Columna: "+yycolumn+1+" linea: "+ yyline+1 + " Token: "+yytext());
                                    }
    
}
