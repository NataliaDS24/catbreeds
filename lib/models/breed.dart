import 'package:catbreeds/config/config_imports.dart';
import 'package:catbreeds/models/weight.dart';
import 'package:catbreeds/utils/int_utils.dart';

class Breed {
  final String id;
  final Weight weight;
  final String name;
  final String? cfaUrl;
  final String? vetstreetUrl;
  final String? vcahospitalsUrl;
  final String temperament;
  final String origin;
  final String countryCodes;
  final String countryCode;
  final String description;
  final String lifeSpan;
  final int indoor;
  final int? lap;
  final String? altNames;
  final int adaptability;
  final int affectionLevel;
  final int childFriendly;
  final int dogFriendly;
  final int energyLevel;
  final int grooming;
  final int healthIssues;
  final int intelligence;
  final int sheddingLevel;
  final int socialNeeds;
  final int strangerFriendly;
  final bool vocalisation;
  final bool experimental;
  final bool hairless;
  final bool natural;
  final bool rare;
  final bool rex;
  final bool suppressedTail;
  final bool shortLegs;
  final String? wikipediaUrl;
  final bool hypoallergenic;
  final String? referenceImageId;
  String? imageUrl;

  Breed({
    required this.id,
    required this.weight,
    required this.name,
    this.cfaUrl,
    this.vetstreetUrl,
    this.vcahospitalsUrl,
    required this.temperament,
    required this.origin,
    required this.countryCodes,
    required this.countryCode,
    required this.description,
    required this.lifeSpan,
    required this.indoor,
    this.lap,
    this.altNames,
    required this.adaptability,
    required this.affectionLevel,
    required this.childFriendly,
    required this.dogFriendly,
    required this.energyLevel,
    required this.grooming,
    required this.healthIssues,
    required this.intelligence,
    required this.sheddingLevel,
    required this.socialNeeds,
    required this.strangerFriendly,
    required this.vocalisation,
    required this.experimental,
    required this.hairless,
    required this.natural,
    required this.rare,
    required this.rex,
    required this.suppressedTail,
    required this.shortLegs,
    this.wikipediaUrl,
    required this.hypoallergenic,
    this.referenceImageId,
    this.imageUrl,
  });

  factory Breed.fromMap({required Map map}) {
    int vocalisation = map['vocalisation'] ?? 0;
    int experimental = map['experimental'] ?? 0;
    int hairless = map['hairless'] ?? 0;
    int natural = map['natural'] ?? 0;
    int rare = map['rare'] ?? 0;
    int rex = map['rex'] ?? 0;
    int suppressedTail = map['suppressed_tail'] ?? 0;
    int shortLegs = map['short_legs'] ?? 0;
    int hypoallergenic = map['hypoallergenic'] ?? 0;
    return Breed(
      id: map['id'] ?? AppStrings.voidText,
      weight: Weight.fromMap(map: map['weight']),
      name: map['name'] ?? AppStrings.voidText,
      cfaUrl: map['cfa_url'],
      vetstreetUrl: map['vetstreet_url'],
      vcahospitalsUrl: map['vcahospitals_url'],
      temperament: map['temperament'] ?? AppStrings.voidText,
      origin: map['origin'] ?? AppStrings.voidText,
      countryCodes: map['country_codes'] ?? AppStrings.voidText,
      countryCode: map['country_code'] ?? AppStrings.voidText,
      description: map['description'] ?? AppStrings.voidText,
      lifeSpan: map['life_span'] ?? AppStrings.voidText,
      indoor: map['indoor'] ?? 0,
      altNames: map['alt_names'] ?? AppStrings.voidText,
      adaptability: map['adaptability'] ?? 0,
      affectionLevel: map['affection_level'] ?? 0,
      childFriendly: map['child_friendly'] ?? 0,
      dogFriendly: map['dog_friendly'] ?? 0,
      energyLevel: map['energy_level'] ?? 0,
      grooming: map['grooming'] ?? 0,
      healthIssues: map['health_issues'] ?? 0,
      intelligence: map['intelligence'] ?? 0,
      sheddingLevel: map['shedding_level'] ?? 0,
      socialNeeds: map['social_needs'] ?? 0,
      strangerFriendly: map['stranger_friendly'] ?? 0,
      vocalisation: vocalisation.getBoolValue,
      experimental: experimental.getBoolValue,
      hairless: hairless.getBoolValue,
      natural: natural.getBoolValue,
      rare: rare.getBoolValue,
      rex: rex.getBoolValue,
      suppressedTail: suppressedTail.getBoolValue,
      shortLegs: shortLegs.getBoolValue,
      wikipediaUrl: map['wikipedia_url'],
      hypoallergenic: hypoallergenic.getBoolValue,
      referenceImageId: map['reference_image_id'] ?? AppStrings.voidText,
    );
  }
}
