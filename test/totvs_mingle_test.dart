import 'package:flutter_test/flutter_test.dart';
import 'package:totvs_mingle/totvs_mingle.dart'; // Importe o pacote que você está testando.

void main() {
  group('MeuPacote', () {
    test('Teste de login com sucesso', () async {
      final meuPacote = MingleService('http://localhost:80/api', '64346072ee8aebcd686d6548'); // Inicialize seu pacote com as configurações necessárias.

      const email = 'usuario@example.com';
      const pwd = 'senha';
      const alias = 'alias';
      final response = await meuPacote.login(email, pwd, alias);

      // Verifique se a resposta é um mapa com o token (ou outro resultado esperado).
      expect(response, isA<Map<String, dynamic>>());
      expect(response['token'], isNotEmpty); // Verifique se o token não está vazio.
    });

    // test('Teste de login com falha', () async {
    //   final meuPacote = MeuPacote(); // Inicialize seu pacote com as configurações necessárias.

    //   final email = 'usuario@example.com';
    //   final pwd = 'senha_errada';
    //   final alias = 'alias_errado';

    //   // Use um token inválido para simular uma falha na autenticação.
    //   meuPacote.setToken('token_invalido');

    //   // Tente fazer login com informações incorretas.
    //   try {
    //     await meuPacote.login(email, pwd, alias);
    //   } catch (e) {
    //     // Verifique se uma exceção foi lançada (deve ocorrer uma falha na autenticação).
    //     expect(e, isA<Exception>());
    //     expect(e.toString(), 'Falha ao enviar dados para a API');
    //   }
    // });
  });
}