import 'Conta.dart';

void main() {
  print("09.1) Exemplo de uso em uma conta bancária");
  print("");

  // simulando input do usuário
  Conta conta1 = Conta("Vinícius", "123456");
  // autenticando dados com o banco de dados
  conta1.autenticar();
  // depositando na conta
  conta1.depositar(50.0);
  // sacando da conta
  conta1.sacar(45.0);
  // apenas mostrar saldo
  conta1.mostrarSaldo();
}
