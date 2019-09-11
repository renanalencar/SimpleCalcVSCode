# Prática AntLR no VS Code
## SimpleCalc Grammar

- Devem ser enviados ao e-mail do professor <mr.costaalencar@gmail.com> até uma hora após o termino da aula.
- As resoluções devem estar em arquivos diferentes para cada exercício.
- Utilizem o arquivo SimpleCalc.g4

`
grammar SimpleCalc;
expr : term ( ( '+' | '-' ) term )* ';' ;
term : number ;
number  : DIGIT+ ;	
DIGIT : '0'..'9' ;
WHITESPACE : ( '\t' | ' ' | '\r' | '\n'| '\u000C' )+ -> channel(HIDDEN);

`

### Exercício 1
- Estender a gramática exemplo para reconhecer também operações de multiplicação e divisão.
- Observação: a extensão deve ser feita respeitando a precedência dos operadores.

### Exercício 2
- Estender a gramática do exercício 1 para oferecer suporte a variáveis.
- Exemplo:

`
a + 1 - b;
b - a * 4;
3 / 1 + b;
`

### Exercício 3
- Estender a gramática do exercício 2 para que reconheça comandos de atribuição.
- A linguagem também deve oferecer a possibilidade de comandos múltiplos (sequência de expressões e/ou atribuições).
