import 'package:dart_design_pattern/universal/utils.dart';
import 'package:flutter/material.dart';

class FactoryMethod extends StatelessWidget {
  final String _purpose = 'Propósito:';
  final String _contentPurpose =
      '\n- Definir uma interface para criação de um objeto porém deixando que sub-classes decidam de qual classe instanciá-lo.';

  final String _applicability = 'Aplicabilidade:';
  final String _contentApplicability =
      '\n- Uma classe não conhece previamente as classes dos objetos que ela precisa instanciar.'
      '\n- Uma classe quer que suas sub-classes especifiquem os objetos a serem criados.'
      '\n- Classes delegam responsabilidade para uma entre várias sub-classes helper e deseja-se localizar o conhecimento de para qual sub-classe helper foi delegada a operação.';

  final String _participants = 'Participantes:';
  final String _contentParticipants =
      '\n- Product (Document): define a interface dos objetos que o factory method cria.'
      '\n- ConcreteProduct (MyDocument): implementa a interface Product.'
      '\n- Creator (Application): declara o factory method, retornando um objeto do tipo Product. Pode ser abstrato ou não, geralmente invoca o factory method.'
      '\n- ConcreteCreator (MyApplication): implementa (ou sobrepõe) o factory method para retornar uma implementação específica de Product (algum ConcreteProduct).';

  final String _collaborations = 'Colaborações:';
  final String _contentCollaborations =
      '\n- O Creator confia às suas sub-classes a definição do factory method, retornando uma instância apropriada de ConcreteProduct.';

  final String _consequences = 'Consequências:';
  final String _contentConsequences =
      '\n- Elimina a necessidade de utilizar, no seu código, classes específicas de aplicação pois utiliza somente a interface Product.'
      '\n- Exige a derivação de Creator para a implementação de um único método (provavelmente com uma linha).'
      '\n- Provê hooks às sub-classes: no sistema de documentos, por exemplo, pode-se definir um factory method chamado createFileDialog() com uma implementação default e permitir que sub-classes indiquem a utilização de um objeto alternativo.'
      '\n- Conecta hierarquias paralelas de classes.';

  final String _implementation = 'Implementação:';
  final String _contentImplementation =
      '\n- Creator como classe abstrata: requer a existência de sub-classes que implementam o factory method e, portanto, se isolam totalmente de classes não anteriormente previstas.'
      '\n- Creator com implementação default do factory method: não requer um ConcreteCreator. Define o factory method simplesmente para tornar o código mais flexível: sub-classes podem futuramente sobrescrever o factory method.'
      '\n- Factory methods parametrizados: o factory method recebe um parâmetro indicando o tipo de produto concreto a ser criado.'
      '\n- Variações e problemas específicos de linguagem: o factory method pode retornar a classe do objeto a ser criado e, portanto, um ConcreteCreator pode definir esta classe em run-time. A classe do objeto a ser criado pode ser também um atributo estático no Creator.';

  final String _related = 'Padrões Relacionados: ';
  final String _contentRelated =
      '\n- Abstract Factory é frequentemente implementado com Factory Methods.'
      '\n- Factory methods são geralmente chamados dentro de Template methods.'
      '\n- Utilizando Prototypes a criação das sub-classes não é necessária, entretanto será necessário um método de inicialização do produto, a ser chamado pelo Creator. Com factory methods convencionais isso não é necessário.';

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
          imagePath: 'assets/fact_method.png',
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
        Utils.buildImage(
          imagePath: 'assets/fact_method2.png',
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
