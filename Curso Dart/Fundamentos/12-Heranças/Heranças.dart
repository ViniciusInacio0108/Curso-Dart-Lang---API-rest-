/*  
Regras*
  - Uma classe pode ter somente uma herança.

Construtores*
  - Devem obdecer a ordem dos parâmentros
  - Parâmentros default devem ser nomeados ou posicionados
  - Tratamento e tipagem de parâmetros devem ser feitos nas classes herdeiras
 */

/* 
  Comentário:
  Herança é simplesmente algo bem simples e básico para Programação Orientada a Objetos.
*/

// só precisamos passar aqui o import do Dog, já que o efeito cascata tomou conta da herança entre os arquivos.
import "Dog.dart";

void main() {
  print("12.0) Heranças\n");

  var cao = Dog("Leia", true, "Femea", 3, true);

  print(
      "Nome: ${cao.nome}, do sexo ${cao.sexo} com idade de ${cao.idade} anos e muito docil: ${cao.docil}");
  cao
    ..dormir()
    ..latir()
    ..mamar();
}
