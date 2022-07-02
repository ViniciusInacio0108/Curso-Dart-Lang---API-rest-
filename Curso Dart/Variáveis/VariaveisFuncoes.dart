/* Principais funções para cada tipo de variável */

void main() {
  /* Para variáveis de tipo num (int e double) temos as seguintes mais importantes: */
  num pi = 3.14;

  print(pi.ceil()); // basicamente vai arrendondar pro numero inteiro mais próximo de cima
  print(pi.floor()); // vai fazer o arredondamento pro inteiro mais próximo debaixo
  print(pi.round()); // vai arredondar normalmente
  print(pi.toDouble()); // vai colocar em double se for int (no caso 3.14 já é double)
  print(pi.toInt()); // vai transformar em int
  print(pi.toString()); // vai transformar em String
  print(pi.truncate()); // vai descartar a parte fracionária
  print(pi.clamp(3, 3.1)); // mostra o intervalor mais próximo dos limites estabelecidos
  print(pi.compareTo(3)); // vai dizer se o valor é maior, menor ou igual (retorno da func: menor = -1, igual = 0, maior = 1)
  print(pi.remainder(3)); // vai mostrar o resto da divisão pelo número estabelecido
  print(pi.toStringAsFixed(1)); // vai virar String e vai deixar a quantidade de numero pós vírgula que você colocar como parâmetro
  print(pi.isNegative); // é negativo?
  print(pi.isFinite); // é infinito?
  print(12.gcd(20)); // retornar o máximo divisor comum entro os dois números
  print("1".padLeft(2, "0")); // basicamente estou querendo duas casas, sendo que a esquerda do meu número 1 eu adiciono sempre 0

  print("");

  String nome = "Vinícius";
  String nomeCompleto = "\t Vinícius Inácio"; // usando tab para simular erro de tabulação

  print(nome.toLowerCase()); // todos os caracteres para minúsculo
  print(nome.toUpperCase()); // todos par maiúsculo
  print(nomeCompleto.trim()); // remove espaços do início e do fim
  print(nomeCompleto.split("s")); // divide o nome em um array a partir do local declarado no argumento
  print(nome.split("")); // aqui como não passei nem espaço vazio como argumento ele vai dividir cada caractere do nome em um local do array
  print(nome.substring(2, 8)); // cada caractere é um indice começando de 0, essa função faz com que tenhamos uma outra String começando do indice inicial, e o final informado.
  print(nome.startsWith("V")); // retorna true se iniciar com a letra informada
  print(nome.startsWith("í", 3)); // vai ver se a partir do indice 3 ele começa com essa letra e retornará um boolean
  print(nome.replaceAll("i", "a")); // vai mudar tudo que tiver i para a
  print(nome.replaceFirst("Vi", "Li")); // vai mudar apenas a primeira ocorrência
  print(nome.replaceFirst("i", "a", 1)); // vai substituir apenas no indice informado
  print(nome.replaceRange(2, 4, "Lando")); // vai dar um replace com o texto escolhido entre os indices informados
  print(nomeCompleto.trim().split(" ")); // basicamente vai retirar os espaços vazios e depois vai criar o array com split baseado no parametro passado
  print(nome.contains("V")); // basicamente pergunta se contém esse valor dentro da variavel
  print(nome.contains("V", 0)); // se existe na variavel nessa posição do indice
  print(nome.indexOf("i")); // retorna um indice baseado no parametro
  print(nome.length); // retorna o tamanho
  print(nome.endsWith("s")); // dizer se termina com esse paramentro
  print(nome.compareTo("Vinícius")); // retornar 0 se for igual
  print(nome.compareTo("Vi")); // retornar 1 se possuir dentro da String
  print(nome.compareTo("kelly")); // retornar -1 se for diferente e não possuir
  print(" ".isEmpty); // é vazia?
  print(double.parse("23.33")); // vai retornar em double não em String
  print(int.parse("23")); // vai retornar como inteiro e não mais como String
  print(nome.lastIndexOf("s")); // mostra o último indice com esse parametro

  print("");

  var numero = 3.13;
  print(numero is double); // retorna true se a afirmação for verdadeira
  print(numero is! double); // retorna true se a afirmação for falsa
}
