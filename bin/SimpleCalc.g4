grammar SimpleCalc;

expr : term ( ( '+' | '-' ) term )* ';' ;
term : number ;
number  : DIGIT+ ;	
DIGIT : '0'..'9' ;
WHITESPACE : ( '\t' | ' ' | '\r' | '\n'| '\u000C' )+ -> channel(HIDDEN);
