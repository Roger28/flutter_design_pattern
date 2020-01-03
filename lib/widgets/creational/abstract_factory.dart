import 'package:flutter/material.dart';

class AbstractFactory extends StatelessWidget {
  final String _purpose = 'Propósito:';
  final String _contentPurpose =
      '\n- Disponibilizar uma interface para a criação de famílias de objetos dependentes ou relacionados sem especificar suas classes concretas.';

  final String _applicability = 'Aplicabilidade:';
  final String _contentApplicability =
      '\n- O sistema precisa ser independente de como os produtos são criados, compostos e representados.'
      '\n- O sistema deve ser configurado com uma de múltiplas famílias de produtos.'
      '\n- Produtos de uma família devem ser sempre utilizados em conjunto e isto precisa ser garantido.'
      '\n- Deseja-se disponibilizar uma biblioteca de classes de produtos mas revelar somente as suas interfaces, não suas implementações.';

  final String _participants = 'Participantes:';
  final String _contentParticipants =
      '\n- AbstractFactory: declara uma interface para operações que criam objetos produto abstratos.'
      '\n- ConcreteFactory: implementa as operações para criar objetos produto concretos.'
      '\n- AbstractProduct: declara uma interface para um tipo de objeto produto.'
      '\n- ConcreteProduct: define o objeto produto a ser criado pela fábrica concreta correspondente e implementa a interface AbstractProduct.';

  final String _collaborations = 'Colaborações:';
  final String _contentCollaborations = '\n- Normalmente uma única instância de fábrica concreta é criada em run-time. Esta fábrica cria produtos com uma implementação em particular. Para criar outros produtos deve-se utilizar uma fábrica diferente.'
      '\n- As classes abstratas transferem a responsabilidade de criação dos objetos produto para as suas sub-classes.';

  final String _consequences = 'Consequências:';
  final String _contentConsequences = '\n - Controla as classes dos objetos que a aplicação cria. Clientes manipulam instâncias somente através de suas interfaces abstratas. Nomes de classes estão isolados nas fábricas concretas, eles não aparecem no código do cliente.'
      '\n- A classe da fábrica concreta sendo utilizada aparece somente uma vez na aplicação, facilitando modificações. A família de produtos mudaria toda de uma vez.'
      '\n- Garante que os objetos utilizados são todos de uma mesma família, representada pela fábrica concreta sendo utilizada.'
      '\n- A interface da fábrica abstrata torna fixo o conjunto de produtos que podem ser criados.'
      '\n- Suportar um novo produto exige a extensão da interface da fábrica abstrata e a modificação de todas as suas sub-classes.';

  final String _implementation = 'Implementação:';
  final String _contentImplementation = '\n- Geralmente precisa-se de somente uma instância da fábrica concreta por aplicação.'
      '\n- A fábrica abstrata somente define uma interface para criação de produtos, geralmente através de um Factory Method para cada produto.'
      '\n- As fábricas concretas implementam esses Factory Methods para instanciar os objetos.'
      '\n- A implementação é simples, mas requer uma fábrica concreta para cada família de produtos, mesmo que elas sejam ligeiramente diferentes.'
      '\n- Se estão previstas muitas famílias, a fábrica concreta pode ser implementada usando o padrão Prototype.'
      '\n- Teríamos apenas uma fábrica concreta, inicializada com os protótipos dos produtos desejados.'
      '\n- Uma outra variação é utilizar meta-classes, se disponíveis na linguagem.'
      '\n- Na fábrica abstrata, os tipos de produtos fazem parte das assinaturas dos Factory Methods. Adicionar um novo produto requer mudar a interface da fábrica abstrata e de todas as classes dela dependentes.'
      '\n- Uma solução mais flexível porém menos segura é adicionar um parâmetro ao Factory Method indicando o tipo de produto a ser criado.'
      '\n- A fábrica abstrata (e concreta) teria somente um Factory Method.'
      '\n- Entretanto, visto que os produtos deverão ter a mesma classe-base, o cliente os enxergará de uma única maneira, sem distinguir os tipos dos produtos.';

  final String _related = 'Padrões Relacionados: ';
  final String _contentRelated = '\n- O Abstract Factory é geralmente implementado com Factory Methods, mas também pode utilizar o Prototype.'
      '\n- Uma fábrica concreta é frequentements um Singleton.';

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(16.0),
          child: _buildText(title: _purpose, body: _contentPurpose),
        ),
        _buildContainer(title: _applicability, body: _contentApplicability),
        Container(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Estrutura: ',
              ),
              Container(
                padding: EdgeInsets.only(top: 8.0),
                child: Image.asset(
                  'assets/abs_fact.png',
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
            ],
          ),
        ),
        _buildContainer(title: _participants, body: _contentParticipants),
        _buildContainer(title: _collaborations, body: _contentCollaborations),
        _buildContainer(title: _consequences, body: _contentConsequences),
        _buildContainer(title: _implementation, body: _contentImplementation),
        _buildContainer(title: _related, body: _contentRelated),
      ],
    );
  }

  Container _buildContainer({String title, String body}) {
    return Container(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
      child: _buildText(title: title, body: body),
    );
  }

  RichText _buildText({String title, String body}) {
    return RichText(
      softWrap: true,
      text: TextSpan(
        text: title,
        style: TextStyle(
          color: Colors.black87,
          fontFamily: 'GoogleSans',
        ),
        children: [
          TextSpan(
            text: body,
            style: TextStyle(
              color: Colors.grey[500],
              fontFamily: 'GoogleSans',
            ),
          ),
        ],
      ),
    );
  }
}