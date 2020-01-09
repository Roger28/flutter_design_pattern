import 'package:dart_design_pattern/universal/utils.dart';
import 'package:flutter/material.dart';

class Singleton extends StatelessWidget {
  final String _purpose = 'Propósito:';
  final String _contentPurpose =
      '\n- Garantir que uma classe tenha somente uma única instância e disponibilizar um ponto global de acesso a ela.';

  final String _applicability = 'Aplicabilidade:';
  final String _contentApplicability =
      '\n- Deve existir somente uma instância da classe e os clientes devem utilizá-la através de um ponto de acesso bem definido.'
      '\n- Esta instância única deve poder ser extendida e os clientes devem poder usar a versão extendida sem modificar os seus códigos-fonte.';

  final String _participants = 'Participantes:';
  final String _contentParticipants =
      '\n- Define a operação instance() que permite a clientes o acesso à instância única. Instance() é um método estático.'
      '\n- Pode ser responsável por criar a sua instância única.';

  final String _collaborations = 'Colaborações:';
  final String _contentCollaborations =
      '\n- Clientes acessam a instância única do Singleton somente através do método instance() do Singleton.';

  final String _consequences = 'Consequências:';
  final String _contentConsequences =
      '\n- Acesso controlado à instância única: a própria classe encapsula sua instância única e, portanto, tem estrito controle sobre como e quando os clientes a acessam.'
      '\n- Redução no namespace: o Singleton é uma alternativa eficiente às variáveis globais. Evita poluir o namespace com variáveis globais que armazenam instâncias únicas.'
      '\n- Permite refinamento de operações e de representações: a classe Singleton pode ser derivada e é fácil fazer com que a aplicação use uma instância desta nova classe derivada. A classe a ser utilizada pode também ser definida em run-time.'
      '\n- Permite um número variado de instâncias: pode permitir a criação de mais de uma instância do Singleton ou até controlar o número de instâncias existentes. Somente a operação instance() precisa ser modificada.'
      '\n- É mais flexível que métodos e atributos estáticos: com métodos e atributos estáticos é difícil permitir que mais de uma instância exista.';

  final String _implementation = 'Implementação:';
  final String _contentImplementation =
      '\n- A classe é criada de modo que somente uma instância possa ser criada.'
      '\n- Geralmente oculta-se a operação que cria a instância dentro de um método estático – instance() – que garante que somente uma instância será criada.'
      '\n- Derivando a classe Singleton: (O problema não é implementar a sub-classe mas configurar a aplicação para utilizá-la, a forma mais simples é modificar o método instance(), outra solução é mover a implementação do método instance() da classe pai para as classes filhas e decidir qual Singleton utilizar em tempo de link. Não é possível escolher o Singleton em run-time, entretanto pode-se utilizar condicionais para determinar a sub-classe a ser instanciada porém o conjunto de alternativas está hard-coded, uma abordagem mais flexível é utilizar um registro de singletons).'
      '\n- Derivando a classe Singleton (registro de singletons): (Ao invés do método instance() decidir qual singleton utilizar as diferentes classes Singleton registram sua instância única, identificadas por um nome, em um registro bem conhecido, quando o método instance() precisa de um singleton ele consulta o registro pelo nome desejado, tudo o que é necessário é uma interface, comum a todos os singletons, contendo as operações do registro).';

  final String _related = 'Padrões Relacionados: ';
  final String _contentRelated =
      '\n- Muitos padrões podem ser implementados usando o Singleton: Abstract Factory, Builder, Prototype.';

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: <Widget>[
        Utils.buildFirstSection(
          title: _purpose,
          body: _contentPurpose,
        ),
        Utils.buildContainer(
          title: _applicability,
          body: _contentApplicability,
        ),
        Utils.buildImage(
          imagePath: 'assets/singleton.png',
        ),
        Utils.buildContainer(
          title: _participants,
          body: _contentParticipants,
        ),
        Utils.buildContainer(
          title: _collaborations,
          body: _contentCollaborations,
        ),
        Utils.buildContainer(
          title: _consequences,
          body: _contentConsequences,
        ),
        Utils.buildContainer(
          title: _implementation,
          body: _contentImplementation,
        ),
        Utils.buildContainer(
          title: _related,
          body: _contentRelated,
        ),
      ],
    );
  }
}
