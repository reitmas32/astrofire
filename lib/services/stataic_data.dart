import 'package:astofire/models/person.dart';

class StaticData {
  static String about = '''
The Community Aerial Fire Response project is an innovative, open-source solution for fighting wildfires. It combines hardware and software, including blaze sensors, thermal camera equipped drones, web control system and a mobile application. Its main goal is to provide early fire detection, fast notification to the community and efficient real-time response.
''';

  static List<Person> team = [
    Person(
      name: 'ISAC VALENCIA',
      picture:
          'https://raw.githubusercontent.com/reitmas32/astrofire/main/assets/isac.png',
      profesion: 'Ing. en Telecomunicaciones',
    ),
    Person(
      name: 'LISETTE HERNANDEZ',
      picture:
          'https://raw.githubusercontent.com/reitmas32/astrofire/main/assets/liss.png',
      profesion: 'Ing. en Computación',
    ),
    Person(
      name: 'DAVID FARFÁN',
      picture:
          'https://raw.githubusercontent.com/reitmas32/astrofire/main/assets/farfi.png',
      profesion: 'Ing. Mecanico',
    ),
    Person(
      name: 'RAFAEL ZAMORA',
      picture:
          'https://raw.githubusercontent.com/reitmas32/astrofire/main/assets/rafa.png',
      profesion: 'Ing. en Computación',
    ),
    Person(
      name: 'ISRAEL MEJIA',
      picture:
          'https://raw.githubusercontent.com/reitmas32/astrofire/main/assets/isra.png',
      profesion: 'Ing. en Computación',
    ),
    Person(
      name: 'RONI HERNANDEZ',
      picture:
          'https://raw.githubusercontent.com/reitmas32/astrofire/main/assets/isac.png',
      profesion: 'Ing. en Telecomunicaciones',
    ),
  ];
}
