import 'package:bubolechka2/data/cards.dart';

import '../models/bubo_category.dart';

///
/// This file provides the original category data
///

/// Original labels in german and bulgarian, english added as last value
const labels = [
  ["1", "Obst", "плодове", "fruits", "frutas"],
  ["2", "Farben", "цветове", "colors", "colores"],
  ["3", "Moebel", "мебели", "furniture", "muebles"],
  ["4", "Sachen", "дрехи", "clothes", "ropa"],
  ["5", "Spielzeug", "играчки", "toys", "juguetes"],
  ["6", "Tiere", "животни", "animals", "animales"],
  ["7", "Zahlen", "цифри", "digits", "dígitos"],
  ["8", "Wetter", "времето", "weather", "clima"],
  ["9", "Zu Hause", "вкъщи", "at home", "en casa"],
  ["10", "Natur", "природа", "nature", "naturaleza"],
  ["11", "Im Meer", "морето", "sea", "mar"],
  ["12", "Am Strand", "на плажа", "on the beach", "en la playa"],
  ["13", "Sport", "спорт", "sport", "deporte"],
  ["14", "Stadt", "град", "city", "ciudad"],
  ["15", "Berufe", "професии", "professions", "profesiones"],
  ["16", "Fahrzeuge", "транспрорт", "transport", "transporte"],
  ["17", "Gemuese", "зеленчуци", "vegetables", "verduras"]
];

///
/// Labels transformed into BuboCategories
///
/// This list can be used in the application for rendering the categories
///
List<BuboCategory> buboCategories = labels.map((categoryLabels) {
  return BuboCategory(
      int.parse(categoryLabels[0]),
      'assets/categories/cat_${categoryLabels[1].toLowerCase().replaceAll(' ', '_')}@3x.png',
      {
        'us': categoryLabels[3],
        'de': categoryLabels[1],
        'bg': categoryLabels[2],
        'es': categoryLabels[4]
      },
      cards
          .where(
            (card) => card.categoryId == int.parse(categoryLabels[0]),
          )
          .toList());
}).toList();
