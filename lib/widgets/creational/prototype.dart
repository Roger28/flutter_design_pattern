import 'package:dart_design_pattern/universal/utils.dart';
import 'package:flutter/material.dart';

class Prototype extends StatelessWidget {
  final String _purpose = 'Propósito:';
  final String _contentPurpose =
      '\n- Especificar, através de uma instância-protótipo, os tipos de objetos a serem criados. Novos objetos são criados copiando os protótipos.';

  final String _applicability = 'Aplicabilidade:';
  final String _contentApplicability =
      '\n- O sistema deve ser independente de como seus produtos são criados, compostos e representados.'
      '\n- A classe a ser instanciada é especificada em run-time.'
      '\n- Deseja-se evitar a construção de uma hierarquia de classes fábricas paralela a uma hieraquia de classes produtos.'
      '\n- Instâncias de uma classe possuem uma combinação de estado dentre poucas possibilidades diferentes.';

  final String _participants = 'Participantes:';
  final String _contentParticipants =
      '\n- Prototype: declara uma interface para se auto-duplicar.'
      '\n- ConcretePrototype: implementa a operação de auto-duplicação.'
      '\n- Client: cria um novo objeto solicitando que o Prototype se duplique.';

  final String _collaborations = 'Colaborações:';
  final String _contentCollaborations =
      '\n- O cliente solicita ao Prototype que se auto-duplique.';

  final String _consequences = 'Consequências:';
  final String _contentConsequences =
      '\n- Compartilha muitas das consequências do Abstract Factory e Builder: (Isola as classes concretas do cliente, Permite que clientes trabalhem com classes específicas da aplicação sem requerer modificações).'
      '\n- Adição e remoção de produtos em run-time.'
      '\n- Garante que os objetos utilizados são todos de uma mesma família, representada pela fábrica concreta sendo utilizada.'
      '\n- Especificação de novos objetos através da variação de valores: (Sistemas altamente dinâmicos permitem a definição de novos comportamentos através de composição, O objeto agregado pode ser criado via Prototype, Define-se “novas classes” em run-time, sem programação).'
      '\n- Especificação de novos objetos através da variação de estrutura: (Muitas aplicações constroem objetos a partir de partes e sub-partes (ex: circuitos e sub-circuitos), O sub-circuito pode ser um Prototype para o toolbar de elementos de circuito, Se o circuito (composite) também implementar o método de duplicação (com deep copy) então circuitos com diferentes estruturas podem ser tornar Prototypes).'
      '\n- Número reduzido de sub-classes.'
      '\n- A implementação do método de duplicação pode ser complicada (deep copy, referências cruzadas, etc).'
      '\n- Especificação de novos objetos através da variação de estrutura: (Muitas aplicações constroem objetos a partir de partes e sub-partes (ex: circuitos e sub-circuitos), O sub-circuito pode ser um Prototype para o toolbar de elementos de circuito, Se o circuito (composite) também implementar o método de duplicação (com deep copy) então circuitos com diferentes estruturas podem ser tornar Prototypes).';

  final String _implementation = 'Implementação:';
  final String _contentImplementation =
      '\n- O Prototype é mais útil em linguagens “estáticas”, onde classes não são objetos e quando existe pouca ou nenhuma informação de tipo em run-time.'
      '\n- Uso de um Prototype Manager: (Quando os protótipos de um sistema podem ser criados e destruídos dinamicamente, Os clientes não gerenciam os protótipos diretamente, ao invés solicitam seu armazenamento e recuperação ao Prototype Manager (registro), Os protótipos são identificados, no registro, por uma chave).'
      '\n- Implementação do método de duplicação: (Parte mais difícil, Shallow Copy x Deep Copy, Geralmente requer deep copy, Se os objetos possuem operação de save e load, pode-se salvá-lo em um buffer de memória e então realizar uma cópia desta região).'
      '\n- A implementação é simples, mas requer uma fábrica concreta para cada família de produtos, mesmo que elas sejam ligeiramente diferentes.'
      '\n- Inicializando clones: (Alguns clones precisam ser inicializados com valores específicos, que não podem ser fornecidos na operação de duplicação, Utiliza-se um método initialize, com parâmetros específicos).';

  final String _related = 'Padrões Relacionados: ';
  final String _contentRelated =
      '\n- Prototype e Abstract Factory são concorrentes, entretanto podem ser utilizados em conjunto.'
      '\n- Projetos com uso intensivo dos padrões Composite e Decorator geralmente se beneficiam do uso do Prototype.';

  @override
  Widget build(BuildContext context) {
    return ListView(
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
          imagePath: 'assets/prototype.png',
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
