import 'package:flutter/material.dart';
import 'package:star_wars/app/domain/people/people.dart';

class AppPeopleDetails extends StatelessWidget {
  People people;

  AppPeopleDetails({required this.people});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Nome: ${people.name}'),
          Text('Ano de nascimento: ${people.birthYear}'),
          Text('Altura(cm): ${people.height}'),
          Text('Gênero: ${people.gender}'),
        ],
      ),
    );
  }
}
