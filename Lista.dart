void main(){
  
  print('Atividade 1 e 2. ');
  Pessoa pessoa1 = Pessoa('Yuri');
  pessoa1.setIdade = 21; 
  pessoa1.exibirDados();
    
  print('Atividade 3.');
  Carros car= Carros('SW4','Corolla');
  car.setPreco = 189000;
  car.exibirDetalhes();
  Carros car1= Carros('Civic','Honda');
  car1.setPreco = 200000;
  car1.exibirDetalhes();
  
  print('Atividade 4.');
  ContaBancaria conta = ContaBancaria('Giovana');
  conta.exibirDetalhes();
  conta.depositar(550);
  conta.sacar(100);
  conta.getSald();
  
  print('Atividade 5.');
  Alunos aluno = Alunos('Dudu', 9, 10);
  String resultado = aluno.verificarAprovacao();
  print('O $aluno foi $resultado.');
  
  
  
    
}
class Pessoa{
        final String nome;
        late int _idadePrivada;

        Pessoa(this.nome);

        set setIdade(int idade) {
            _idadePrivada = idade;
        }

        int get getIdade => _idadePrivada;

        void exibirDados(){
            print( 'Seja bem vindo $nome, Idade: $getIdade');
        }
    }

    class Carros{
        final String marca;
        final String modelo;
        late int _precoPrivado = 0;

        Carros(this.marca, this.modelo);
        set setPreco(int preco){
            _precoPrivado = preco;
        }

        int get getPreco => _precoPrivado;

        void exibirDetalhes(){
            print('O carro de marca $marca e modelo $modelo tem como preço $_precoPrivado');
        }
    }

class ContaBancaria{
  final String titular;
  late double _saldoPrivado = 0 ;
  
  ContaBancaria(this.titular);
  
  set setSaldo(double saldo){
    _saldoPrivado = saldo;
  }
  
  double get getSaldo => _saldoPrivado;
   void exibirDetalhes(){
     ('O titular da conta bancaria é $titular e possui o saldo de : $_saldoPrivado');
   }
  
  double depositar(double deposito){
    _saldoPrivado = _saldoPrivado + deposito;
    return _saldoPrivado;
  }
    double sacar(double saque){
    _saldoPrivado = _saldoPrivado - saque;
    return _saldoPrivado;
  }
  
  void getSald(){
    print('O saldo atual da conta é $_saldoPrivado');
  }
  
}


class Alunos{
  final String nome;
  late double _nota1Privada = 0;
  late double _nota2Privada = 0;
  
  
  Alunos(this.nome, this._nota1Privada, this._nota2Privada);
  
    double calcularMedia(){
    double med = (_nota1Privada + _nota2Privada) / 2;
    return med;
  }
  
  String verificarAprovacao(){
    if (calcularMedia() >= 7){
      String resultado = 'Aprovado';
      return resultado;
    }
    else
    {
      String resultado = 'Reprovado';
      return resultado;
    }
  }
  
  String toString() {
    return nome;
  }
  }

class Produto{
  final String nome;
  late double _precoPrivado = 0;
  
  Produto(this.nome, this._precoPrivado); 


   set setPreco(double preco)
  {
    if (preco > 0)
    {
      _preco = preco;
    }
    else{
      print('Produto invalido!');
    }
  }

  double get getPreco => _preco;
  
  
}