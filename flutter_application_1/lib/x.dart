import 'dart:convert';

import 'package:collection/collection.dart';

class Perros {
  final Message message;
  final String status;
  Perros({
    required this.message,
    required this.status,
  });

  Perros copyWith({
    Message? message,
    String? status,
  }) {
    return Perros(
      message: message ?? this.message,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'message': message.toMap(),
      'status': status,
    };
  }

  factory Perros.fromMap(Map<String, dynamic> map) {
    return Perros(
      message: Message.fromMap(map['message']),
      status: map['status'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Perros.fromJson(String source) => Perros.fromMap(json.decode(source));

  @override
  String toString() => 'Perros(message: $message, status: $status)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Perros &&
      other.message == message &&
      other.status == status;
  }

  @override
  int get hashCode => message.hashCode ^ status.hashCode;
}

class Message {
  final List<dynamic> affenpinscher;
  final List<dynamic> african;
  final List<dynamic> airedale;
  final List<dynamic> akita;
  final List<dynamic> appenzeller;
  final List<String> australian;
  final List<dynamic> basenji;
  final List<dynamic> beagle;
  final List<dynamic> bluetick;
  final List<dynamic> borzoi;
  final List<dynamic> bouvier;
  final List<dynamic> boxer;
  final List<dynamic> brabancon;
  final List<dynamic> briard;
  final List<String> buhund;
  final List<String> bulldog;
  final List<String> bullterrier;
  final List<String> cattledog;
  final List<dynamic> chihuahua;
  final List<dynamic> chow;
  final List<dynamic> clumber;
  final List<dynamic> cockapoo;
  final List<String> collie;
  final List<dynamic> coonhound;
  final List<String> corgi;
  final List<dynamic> cotondetulear;
  final List<dynamic> dachshund;
  final List<dynamic> dalmatian;
  final List<String> dane;
  final List<String> deerhound;
  final List<dynamic> dhole;
  final List<dynamic> dingo;
  final List<dynamic> doberman;
  final List<String> elkhound;
  final List<dynamic> entlebucher;
  final List<dynamic> eskimo;
  final List<String> finnish;
  final List<String> frise;
  final List<dynamic> germanshepherd;
  final List<String> greyhound;
  final List<dynamic> groenendael;
  final List<dynamic> havanese;
  final List<String> hound;
  final List<dynamic> husky;
  final List<dynamic> keeshond;
  final List<dynamic> kelpie;
  final List<dynamic> komondor;
  final List<dynamic> kuvasz;
  final List<dynamic> labradoodle;
  final List<dynamic> labrador;
  final List<dynamic> leonberg;
  final List<dynamic> lhasa;
  final List<dynamic> malamute;
  final List<dynamic> malinois;
  final List<dynamic> maltese;
  final List<String> mastiff;
  final List<dynamic> mexicanhairless;
  final List<dynamic> mix;
  final List<String> mountain;
  final List<dynamic> newfoundland;
  final List<dynamic> otterhound;
  final List<String> ovcharka;
  final List<dynamic> papillon;
  final List<dynamic> pekinese;
  final List<dynamic> pembroke;
  final List<String> pinscher;
  final List<dynamic> pitbull;
  final List<String> pointer;
  final List<dynamic> pomeranian;
  final List<String> poodle;
  final List<dynamic> pug;
  final List<dynamic> puggle;
  final List<dynamic> pyrenees;
  final List<dynamic> redbone;
  final List<String> retriever;
  final List<String> ridgeback;
  final List<dynamic> rottweiler;
  final List<dynamic> saluki;
  final List<dynamic> samoyed;
  final List<dynamic> schipperke;
  final List<String> schnauzer;
  final List<String> setter;
  final List<dynamic> sharpei;
  final List<String> sheepdog;
  final List<dynamic> shiba;
  final List<dynamic> shihtzu;
  final List<String> spaniel;
  final List<String> springer;
  final List<dynamic> stbernard;
  final List<String> terrier;
  final List<dynamic> tervuren;
  final List<dynamic> vizsla;
  final List<String> waterdog;
  final List<dynamic> weimaraner;
  final List<dynamic> whippet;
  final List<String> wolfhound;
  Message({
    required this.affenpinscher,
    required this.african,
    required this.airedale,
    required this.akita,
    required this.appenzeller,
    required this.australian,
    required this.basenji,
    required this.beagle,
    required this.bluetick,
    required this.borzoi,
    required this.bouvier,
    required this.boxer,
    required this.brabancon,
    required this.briard,
    required this.buhund,
    required this.bulldog,
    required this.bullterrier,
    required this.cattledog,
    required this.chihuahua,
    required this.chow,
    required this.clumber,
    required this.cockapoo,
    required this.collie,
    required this.coonhound,
    required this.corgi,
    required this.cotondetulear,
    required this.dachshund,
    required this.dalmatian,
    required this.dane,
    required this.deerhound,
    required this.dhole,
    required this.dingo,
    required this.doberman,
    required this.elkhound,
    required this.entlebucher,
    required this.eskimo,
    required this.finnish,
    required this.frise,
    required this.germanshepherd,
    required this.greyhound,
    required this.groenendael,
    required this.havanese,
    required this.hound,
    required this.husky,
    required this.keeshond,
    required this.kelpie,
    required this.komondor,
    required this.kuvasz,
    required this.labradoodle,
    required this.labrador,
    required this.leonberg,
    required this.lhasa,
    required this.malamute,
    required this.malinois,
    required this.maltese,
    required this.mastiff,
    required this.mexicanhairless,
    required this.mix,
    required this.mountain,
    required this.newfoundland,
    required this.otterhound,
    required this.ovcharka,
    required this.papillon,
    required this.pekinese,
    required this.pembroke,
    required this.pinscher,
    required this.pitbull,
    required this.pointer,
    required this.pomeranian,
    required this.poodle,
    required this.pug,
    required this.puggle,
    required this.pyrenees,
    required this.redbone,
    required this.retriever,
    required this.ridgeback,
    required this.rottweiler,
    required this.saluki,
    required this.samoyed,
    required this.schipperke,
    required this.schnauzer,
    required this.setter,
    required this.sharpei,
    required this.sheepdog,
    required this.shiba,
    required this.shihtzu,
    required this.spaniel,
    required this.springer,
    required this.stbernard,
    required this.terrier,
    required this.tervuren,
    required this.vizsla,
    required this.waterdog,
    required this.weimaraner,
    required this.whippet,
    required this.wolfhound,
  });

  Message copyWith({
    List<dynamic>? affenpinscher,
    List<dynamic>? african,
    List<dynamic>? airedale,
    List<dynamic>? akita,
    List<dynamic>? appenzeller,
    List<String>? australian,
    List<dynamic>? basenji,
    List<dynamic>? beagle,
    List<dynamic>? bluetick,
    List<dynamic>? borzoi,
    List<dynamic>? bouvier,
    List<dynamic>? boxer,
    List<dynamic>? brabancon,
    List<dynamic>? briard,
    List<String>? buhund,
    List<String>? bulldog,
    List<String>? bullterrier,
    List<String>? cattledog,
    List<dynamic>? chihuahua,
    List<dynamic>? chow,
    List<dynamic>? clumber,
    List<dynamic>? cockapoo,
    List<String>? collie,
    List<dynamic>? coonhound,
    List<String>? corgi,
    List<dynamic>? cotondetulear,
    List<dynamic>? dachshund,
    List<dynamic>? dalmatian,
    List<String>? dane,
    List<String>? deerhound,
    List<dynamic>? dhole,
    List<dynamic>? dingo,
    List<dynamic>? doberman,
    List<String>? elkhound,
    List<dynamic>? entlebucher,
    List<dynamic>? eskimo,
    List<String>? finnish,
    List<String>? frise,
    List<dynamic>? germanshepherd,
    List<String>? greyhound,
    List<dynamic>? groenendael,
    List<dynamic>? havanese,
    List<String>? hound,
    List<dynamic>? husky,
    List<dynamic>? keeshond,
    List<dynamic>? kelpie,
    List<dynamic>? komondor,
    List<dynamic>? kuvasz,
    List<dynamic>? labradoodle,
    List<dynamic>? labrador,
    List<dynamic>? leonberg,
    List<dynamic>? lhasa,
    List<dynamic>? malamute,
    List<dynamic>? malinois,
    List<dynamic>? maltese,
    List<String>? mastiff,
    List<dynamic>? mexicanhairless,
    List<dynamic>? mix,
    List<String>? mountain,
    List<dynamic>? newfoundland,
    List<dynamic>? otterhound,
    List<String>? ovcharka,
    List<dynamic>? papillon,
    List<dynamic>? pekinese,
    List<dynamic>? pembroke,
    List<String>? pinscher,
    List<dynamic>? pitbull,
    List<String>? pointer,
    List<dynamic>? pomeranian,
    List<String>? poodle,
    List<dynamic>? pug,
    List<dynamic>? puggle,
    List<dynamic>? pyrenees,
    List<dynamic>? redbone,
    List<String>? retriever,
    List<String>? ridgeback,
    List<dynamic>? rottweiler,
    List<dynamic>? saluki,
    List<dynamic>? samoyed,
    List<dynamic>? schipperke,
    List<String>? schnauzer,
    List<String>? setter,
    List<dynamic>? sharpei,
    List<String>? sheepdog,
    List<dynamic>? shiba,
    List<dynamic>? shihtzu,
    List<String>? spaniel,
    List<String>? springer,
    List<dynamic>? stbernard,
    List<String>? terrier,
    List<dynamic>? tervuren,
    List<dynamic>? vizsla,
    List<String>? waterdog,
    List<dynamic>? weimaraner,
    List<dynamic>? whippet,
    List<String>? wolfhound,
  }) {
    return Message(
      affenpinscher: affenpinscher ?? this.affenpinscher,
      african: african ?? this.african,
      airedale: airedale ?? this.airedale,
      akita: akita ?? this.akita,
      appenzeller: appenzeller ?? this.appenzeller,
      australian: australian ?? this.australian,
      basenji: basenji ?? this.basenji,
      beagle: beagle ?? this.beagle,
      bluetick: bluetick ?? this.bluetick,
      borzoi: borzoi ?? this.borzoi,
      bouvier: bouvier ?? this.bouvier,
      boxer: boxer ?? this.boxer,
      brabancon: brabancon ?? this.brabancon,
      briard: briard ?? this.briard,
      buhund: buhund ?? this.buhund,
      bulldog: bulldog ?? this.bulldog,
      bullterrier: bullterrier ?? this.bullterrier,
      cattledog: cattledog ?? this.cattledog,
      chihuahua: chihuahua ?? this.chihuahua,
      chow: chow ?? this.chow,
      clumber: clumber ?? this.clumber,
      cockapoo: cockapoo ?? this.cockapoo,
      collie: collie ?? this.collie,
      coonhound: coonhound ?? this.coonhound,
      corgi: corgi ?? this.corgi,
      cotondetulear: cotondetulear ?? this.cotondetulear,
      dachshund: dachshund ?? this.dachshund,
      dalmatian: dalmatian ?? this.dalmatian,
      dane: dane ?? this.dane,
      deerhound: deerhound ?? this.deerhound,
      dhole: dhole ?? this.dhole,
      dingo: dingo ?? this.dingo,
      doberman: doberman ?? this.doberman,
      elkhound: elkhound ?? this.elkhound,
      entlebucher: entlebucher ?? this.entlebucher,
      eskimo: eskimo ?? this.eskimo,
      finnish: finnish ?? this.finnish,
      frise: frise ?? this.frise,
      germanshepherd: germanshepherd ?? this.germanshepherd,
      greyhound: greyhound ?? this.greyhound,
      groenendael: groenendael ?? this.groenendael,
      havanese: havanese ?? this.havanese,
      hound: hound ?? this.hound,
      husky: husky ?? this.husky,
      keeshond: keeshond ?? this.keeshond,
      kelpie: kelpie ?? this.kelpie,
      komondor: komondor ?? this.komondor,
      kuvasz: kuvasz ?? this.kuvasz,
      labradoodle: labradoodle ?? this.labradoodle,
      labrador: labrador ?? this.labrador,
      leonberg: leonberg ?? this.leonberg,
      lhasa: lhasa ?? this.lhasa,
      malamute: malamute ?? this.malamute,
      malinois: malinois ?? this.malinois,
      maltese: maltese ?? this.maltese,
      mastiff: mastiff ?? this.mastiff,
      mexicanhairless: mexicanhairless ?? this.mexicanhairless,
      mix: mix ?? this.mix,
      mountain: mountain ?? this.mountain,
      newfoundland: newfoundland ?? this.newfoundland,
      otterhound: otterhound ?? this.otterhound,
      ovcharka: ovcharka ?? this.ovcharka,
      papillon: papillon ?? this.papillon,
      pekinese: pekinese ?? this.pekinese,
      pembroke: pembroke ?? this.pembroke,
      pinscher: pinscher ?? this.pinscher,
      pitbull: pitbull ?? this.pitbull,
      pointer: pointer ?? this.pointer,
      pomeranian: pomeranian ?? this.pomeranian,
      poodle: poodle ?? this.poodle,
      pug: pug ?? this.pug,
      puggle: puggle ?? this.puggle,
      pyrenees: pyrenees ?? this.pyrenees,
      redbone: redbone ?? this.redbone,
      retriever: retriever ?? this.retriever,
      ridgeback: ridgeback ?? this.ridgeback,
      rottweiler: rottweiler ?? this.rottweiler,
      saluki: saluki ?? this.saluki,
      samoyed: samoyed ?? this.samoyed,
      schipperke: schipperke ?? this.schipperke,
      schnauzer: schnauzer ?? this.schnauzer,
      setter: setter ?? this.setter,
      sharpei: sharpei ?? this.sharpei,
      sheepdog: sheepdog ?? this.sheepdog,
      shiba: shiba ?? this.shiba,
      shihtzu: shihtzu ?? this.shihtzu,
      spaniel: spaniel ?? this.spaniel,
      springer: springer ?? this.springer,
      stbernard: stbernard ?? this.stbernard,
      terrier: terrier ?? this.terrier,
      tervuren: tervuren ?? this.tervuren,
      vizsla: vizsla ?? this.vizsla,
      waterdog: waterdog ?? this.waterdog,
      weimaraner: weimaraner ?? this.weimaraner,
      whippet: whippet ?? this.whippet,
      wolfhound: wolfhound ?? this.wolfhound,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'affenpinscher': affenpinscher,
      'african': african,
      'airedale': airedale,
      'akita': akita,
      'appenzeller': appenzeller,
      'australian': australian,
      'basenji': basenji,
      'beagle': beagle,
      'bluetick': bluetick,
      'borzoi': borzoi,
      'bouvier': bouvier,
      'boxer': boxer,
      'brabancon': brabancon,
      'briard': briard,
      'buhund': buhund,
      'bulldog': bulldog,
      'bullterrier': bullterrier,
      'cattledog': cattledog,
      'chihuahua': chihuahua,
      'chow': chow,
      'clumber': clumber,
      'cockapoo': cockapoo,
      'collie': collie,
      'coonhound': coonhound,
      'corgi': corgi,
      'cotondetulear': cotondetulear,
      'dachshund': dachshund,
      'dalmatian': dalmatian,
      'dane': dane,
      'deerhound': deerhound,
      'dhole': dhole,
      'dingo': dingo,
      'doberman': doberman,
      'elkhound': elkhound,
      'entlebucher': entlebucher,
      'eskimo': eskimo,
      'finnish': finnish,
      'frise': frise,
      'germanshepherd': germanshepherd,
      'greyhound': greyhound,
      'groenendael': groenendael,
      'havanese': havanese,
      'hound': hound,
      'husky': husky,
      'keeshond': keeshond,
      'kelpie': kelpie,
      'komondor': komondor,
      'kuvasz': kuvasz,
      'labradoodle': labradoodle,
      'labrador': labrador,
      'leonberg': leonberg,
      'lhasa': lhasa,
      'malamute': malamute,
      'malinois': malinois,
      'maltese': maltese,
      'mastiff': mastiff,
      'mexicanhairless': mexicanhairless,
      'mix': mix,
      'mountain': mountain,
      'newfoundland': newfoundland,
      'otterhound': otterhound,
      'ovcharka': ovcharka,
      'papillon': papillon,
      'pekinese': pekinese,
      'pembroke': pembroke,
      'pinscher': pinscher,
      'pitbull': pitbull,
      'pointer': pointer,
      'pomeranian': pomeranian,
      'poodle': poodle,
      'pug': pug,
      'puggle': puggle,
      'pyrenees': pyrenees,
      'redbone': redbone,
      'retriever': retriever,
      'ridgeback': ridgeback,
      'rottweiler': rottweiler,
      'saluki': saluki,
      'samoyed': samoyed,
      'schipperke': schipperke,
      'schnauzer': schnauzer,
      'setter': setter,
      'sharpei': sharpei,
      'sheepdog': sheepdog,
      'shiba': shiba,
      'shihtzu': shihtzu,
      'spaniel': spaniel,
      'springer': springer,
      'stbernard': stbernard,
      'terrier': terrier,
      'tervuren': tervuren,
      'vizsla': vizsla,
      'waterdog': waterdog,
      'weimaraner': weimaraner,
      'whippet': whippet,
      'wolfhound': wolfhound,
    };
  }

  factory Message.fromMap(Map<String, dynamic> map) {
    return Message(
      affenpinscher: List<dynamic>.from(map['affenpinscher']),
      african: List<dynamic>.from(map['african']),
      airedale: List<dynamic>.from(map['airedale']),
      akita: List<dynamic>.from(map['akita']),
      appenzeller: List<dynamic>.from(map['appenzeller']),
      australian: List<String>.from(map['australian']),
      basenji: List<dynamic>.from(map['basenji']),
      beagle: List<dynamic>.from(map['beagle']),
      bluetick: List<dynamic>.from(map['bluetick']),
      borzoi: List<dynamic>.from(map['borzoi']),
      bouvier: List<dynamic>.from(map['bouvier']),
      boxer: List<dynamic>.from(map['boxer']),
      brabancon: List<dynamic>.from(map['brabancon']),
      briard: List<dynamic>.from(map['briard']),
      buhund: List<String>.from(map['buhund']),
      bulldog: List<String>.from(map['bulldog']),
      bullterrier: List<String>.from(map['bullterrier']),
      cattledog: List<String>.from(map['cattledog']),
      chihuahua: List<dynamic>.from(map['chihuahua']),
      chow: List<dynamic>.from(map['chow']),
      clumber: List<dynamic>.from(map['clumber']),
      cockapoo: List<dynamic>.from(map['cockapoo']),
      collie: List<String>.from(map['collie']),
      coonhound: List<dynamic>.from(map['coonhound']),
      corgi: List<String>.from(map['corgi']),
      cotondetulear: List<dynamic>.from(map['cotondetulear']),
      dachshund: List<dynamic>.from(map['dachshund']),
      dalmatian: List<dynamic>.from(map['dalmatian']),
      dane: List<String>.from(map['dane']),
      deerhound: List<String>.from(map['deerhound']),
      dhole: List<dynamic>.from(map['dhole']),
      dingo: List<dynamic>.from(map['dingo']),
      doberman: List<dynamic>.from(map['doberman']),
      elkhound: List<String>.from(map['elkhound']),
      entlebucher: List<dynamic>.from(map['entlebucher']),
      eskimo: List<dynamic>.from(map['eskimo']),
      finnish: List<String>.from(map['finnish']),
      frise: List<String>.from(map['frise']),
      germanshepherd: List<dynamic>.from(map['germanshepherd']),
      greyhound: List<String>.from(map['greyhound']),
      groenendael: List<dynamic>.from(map['groenendael']),
      havanese: List<dynamic>.from(map['havanese']),
      hound: List<String>.from(map['hound']),
      husky: List<dynamic>.from(map['husky']),
      keeshond: List<dynamic>.from(map['keeshond']),
      kelpie: List<dynamic>.from(map['kelpie']),
      komondor: List<dynamic>.from(map['komondor']),
      kuvasz: List<dynamic>.from(map['kuvasz']),
      labradoodle: List<dynamic>.from(map['labradoodle']),
      labrador: List<dynamic>.from(map['labrador']),
      leonberg: List<dynamic>.from(map['leonberg']),
      lhasa: List<dynamic>.from(map['lhasa']),
      malamute: List<dynamic>.from(map['malamute']),
      malinois: List<dynamic>.from(map['malinois']),
      maltese: List<dynamic>.from(map['maltese']),
      mastiff: List<String>.from(map['mastiff']),
      mexicanhairless: List<dynamic>.from(map['mexicanhairless']),
      mix: List<dynamic>.from(map['mix']),
      mountain: List<String>.from(map['mountain']),
      newfoundland: List<dynamic>.from(map['newfoundland']),
      otterhound: List<dynamic>.from(map['otterhound']),
      ovcharka: List<String>.from(map['ovcharka']),
      papillon: List<dynamic>.from(map['papillon']),
      pekinese: List<dynamic>.from(map['pekinese']),
      pembroke: List<dynamic>.from(map['pembroke']),
      pinscher: List<String>.from(map['pinscher']),
      pitbull: List<dynamic>.from(map['pitbull']),
      pointer: List<String>.from(map['pointer']),
      pomeranian: List<dynamic>.from(map['pomeranian']),
      poodle: List<String>.from(map['poodle']),
      pug: List<dynamic>.from(map['pug']),
      puggle: List<dynamic>.from(map['puggle']),
      pyrenees: List<dynamic>.from(map['pyrenees']),
      redbone: List<dynamic>.from(map['redbone']),
      retriever: List<String>.from(map['retriever']),
      ridgeback: List<String>.from(map['ridgeback']),
      rottweiler: List<dynamic>.from(map['rottweiler']),
      saluki: List<dynamic>.from(map['saluki']),
      samoyed: List<dynamic>.from(map['samoyed']),
      schipperke: List<dynamic>.from(map['schipperke']),
      schnauzer: List<String>.from(map['schnauzer']),
      setter: List<String>.from(map['setter']),
      sharpei: List<dynamic>.from(map['sharpei']),
      sheepdog: List<String>.from(map['sheepdog']),
      shiba: List<dynamic>.from(map['shiba']),
      shihtzu: List<dynamic>.from(map['shihtzu']),
      spaniel: List<String>.from(map['spaniel']),
      springer: List<String>.from(map['springer']),
      stbernard: List<dynamic>.from(map['stbernard']),
      terrier: List<String>.from(map['terrier']),
      tervuren: List<dynamic>.from(map['tervuren']),
      vizsla: List<dynamic>.from(map['vizsla']),
      waterdog: List<String>.from(map['waterdog']),
      weimaraner: List<dynamic>.from(map['weimaraner']),
      whippet: List<dynamic>.from(map['whippet']),
      wolfhound: List<String>.from(map['wolfhound']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Message.fromJson(String source) => Message.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Message(affenpinscher: $affenpinscher, african: $african, airedale: $airedale, akita: $akita, appenzeller: $appenzeller, australian: $australian, basenji: $basenji, beagle: $beagle, bluetick: $bluetick, borzoi: $borzoi, bouvier: $bouvier, boxer: $boxer, brabancon: $brabancon, briard: $briard, buhund: $buhund, bulldog: $bulldog, bullterrier: $bullterrier, cattledog: $cattledog, chihuahua: $chihuahua, chow: $chow, clumber: $clumber, cockapoo: $cockapoo, collie: $collie, coonhound: $coonhound, corgi: $corgi, cotondetulear: $cotondetulear, dachshund: $dachshund, dalmatian: $dalmatian, dane: $dane, deerhound: $deerhound, dhole: $dhole, dingo: $dingo, doberman: $doberman, elkhound: $elkhound, entlebucher: $entlebucher, eskimo: $eskimo, finnish: $finnish, frise: $frise, germanshepherd: $germanshepherd, greyhound: $greyhound, groenendael: $groenendael, havanese: $havanese, hound: $hound, husky: $husky, keeshond: $keeshond, kelpie: $kelpie, komondor: $komondor, kuvasz: $kuvasz, labradoodle: $labradoodle, labrador: $labrador, leonberg: $leonberg, lhasa: $lhasa, malamute: $malamute, malinois: $malinois, maltese: $maltese, mastiff: $mastiff, mexicanhairless: $mexicanhairless, mix: $mix, mountain: $mountain, newfoundland: $newfoundland, otterhound: $otterhound, ovcharka: $ovcharka, papillon: $papillon, pekinese: $pekinese, pembroke: $pembroke, pinscher: $pinscher, pitbull: $pitbull, pointer: $pointer, pomeranian: $pomeranian, poodle: $poodle, pug: $pug, puggle: $puggle, pyrenees: $pyrenees, redbone: $redbone, retriever: $retriever, ridgeback: $ridgeback, rottweiler: $rottweiler, saluki: $saluki, samoyed: $samoyed, schipperke: $schipperke, schnauzer: $schnauzer, setter: $setter, sharpei: $sharpei, sheepdog: $sheepdog, shiba: $shiba, shihtzu: $shihtzu, spaniel: $spaniel, springer: $springer, stbernard: $stbernard, terrier: $terrier, tervuren: $tervuren, vizsla: $vizsla, waterdog: $waterdog, weimaraner: $weimaraner, whippet: $whippet, wolfhound: $wolfhound)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;
  
    return other is Message &&
      listEquals(other.affenpinscher, affenpinscher) &&
      listEquals(other.african, african) &&
      listEquals(other.airedale, airedale) &&
      listEquals(other.akita, akita) &&
      listEquals(other.appenzeller, appenzeller) &&
      listEquals(other.australian, australian) &&
      listEquals(other.basenji, basenji) &&
      listEquals(other.beagle, beagle) &&
      listEquals(other.bluetick, bluetick) &&
      listEquals(other.borzoi, borzoi) &&
      listEquals(other.bouvier, bouvier) &&
      listEquals(other.boxer, boxer) &&
      listEquals(other.brabancon, brabancon) &&
      listEquals(other.briard, briard) &&
      listEquals(other.buhund, buhund) &&
      listEquals(other.bulldog, bulldog) &&
      listEquals(other.bullterrier, bullterrier) &&
      listEquals(other.cattledog, cattledog) &&
      listEquals(other.chihuahua, chihuahua) &&
      listEquals(other.chow, chow) &&
      listEquals(other.clumber, clumber) &&
      listEquals(other.cockapoo, cockapoo) &&
      listEquals(other.collie, collie) &&
      listEquals(other.coonhound, coonhound) &&
      listEquals(other.corgi, corgi) &&
      listEquals(other.cotondetulear, cotondetulear) &&
      listEquals(other.dachshund, dachshund) &&
      listEquals(other.dalmatian, dalmatian) &&
      listEquals(other.dane, dane) &&
      listEquals(other.deerhound, deerhound) &&
      listEquals(other.dhole, dhole) &&
      listEquals(other.dingo, dingo) &&
      listEquals(other.doberman, doberman) &&
      listEquals(other.elkhound, elkhound) &&
      listEquals(other.entlebucher, entlebucher) &&
      listEquals(other.eskimo, eskimo) &&
      listEquals(other.finnish, finnish) &&
      listEquals(other.frise, frise) &&
      listEquals(other.germanshepherd, germanshepherd) &&
      listEquals(other.greyhound, greyhound) &&
      listEquals(other.groenendael, groenendael) &&
      listEquals(other.havanese, havanese) &&
      listEquals(other.hound, hound) &&
      listEquals(other.husky, husky) &&
      listEquals(other.keeshond, keeshond) &&
      listEquals(other.kelpie, kelpie) &&
      listEquals(other.komondor, komondor) &&
      listEquals(other.kuvasz, kuvasz) &&
      listEquals(other.labradoodle, labradoodle) &&
      listEquals(other.labrador, labrador) &&
      listEquals(other.leonberg, leonberg) &&
      listEquals(other.lhasa, lhasa) &&
      listEquals(other.malamute, malamute) &&
      listEquals(other.malinois, malinois) &&
      listEquals(other.maltese, maltese) &&
      listEquals(other.mastiff, mastiff) &&
      listEquals(other.mexicanhairless, mexicanhairless) &&
      listEquals(other.mix, mix) &&
      listEquals(other.mountain, mountain) &&
      listEquals(other.newfoundland, newfoundland) &&
      listEquals(other.otterhound, otterhound) &&
      listEquals(other.ovcharka, ovcharka) &&
      listEquals(other.papillon, papillon) &&
      listEquals(other.pekinese, pekinese) &&
      listEquals(other.pembroke, pembroke) &&
      listEquals(other.pinscher, pinscher) &&
      listEquals(other.pitbull, pitbull) &&
      listEquals(other.pointer, pointer) &&
      listEquals(other.pomeranian, pomeranian) &&
      listEquals(other.poodle, poodle) &&
      listEquals(other.pug, pug) &&
      listEquals(other.puggle, puggle) &&
      listEquals(other.pyrenees, pyrenees) &&
      listEquals(other.redbone, redbone) &&
      listEquals(other.retriever, retriever) &&
      listEquals(other.ridgeback, ridgeback) &&
      listEquals(other.rottweiler, rottweiler) &&
      listEquals(other.saluki, saluki) &&
      listEquals(other.samoyed, samoyed) &&
      listEquals(other.schipperke, schipperke) &&
      listEquals(other.schnauzer, schnauzer) &&
      listEquals(other.setter, setter) &&
      listEquals(other.sharpei, sharpei) &&
      listEquals(other.sheepdog, sheepdog) &&
      listEquals(other.shiba, shiba) &&
      listEquals(other.shihtzu, shihtzu) &&
      listEquals(other.spaniel, spaniel) &&
      listEquals(other.springer, springer) &&
      listEquals(other.stbernard, stbernard) &&
      listEquals(other.terrier, terrier) &&
      listEquals(other.tervuren, tervuren) &&
      listEquals(other.vizsla, vizsla) &&
      listEquals(other.waterdog, waterdog) &&
      listEquals(other.weimaraner, weimaraner) &&
      listEquals(other.whippet, whippet) &&
      listEquals(other.wolfhound, wolfhound);
  }

  @override
  int get hashCode {
    return affenpinscher.hashCode ^
      african.hashCode ^
      airedale.hashCode ^
      akita.hashCode ^
      appenzeller.hashCode ^
      australian.hashCode ^
      basenji.hashCode ^
      beagle.hashCode ^
      bluetick.hashCode ^
      borzoi.hashCode ^
      bouvier.hashCode ^
      boxer.hashCode ^
      brabancon.hashCode ^
      briard.hashCode ^
      buhund.hashCode ^
      bulldog.hashCode ^
      bullterrier.hashCode ^
      cattledog.hashCode ^
      chihuahua.hashCode ^
      chow.hashCode ^
      clumber.hashCode ^
      cockapoo.hashCode ^
      collie.hashCode ^
      coonhound.hashCode ^
      corgi.hashCode ^
      cotondetulear.hashCode ^
      dachshund.hashCode ^
      dalmatian.hashCode ^
      dane.hashCode ^
      deerhound.hashCode ^
      dhole.hashCode ^
      dingo.hashCode ^
      doberman.hashCode ^
      elkhound.hashCode ^
      entlebucher.hashCode ^
      eskimo.hashCode ^
      finnish.hashCode ^
      frise.hashCode ^
      germanshepherd.hashCode ^
      greyhound.hashCode ^
      groenendael.hashCode ^
      havanese.hashCode ^
      hound.hashCode ^
      husky.hashCode ^
      keeshond.hashCode ^
      kelpie.hashCode ^
      komondor.hashCode ^
      kuvasz.hashCode ^
      labradoodle.hashCode ^
      labrador.hashCode ^
      leonberg.hashCode ^
      lhasa.hashCode ^
      malamute.hashCode ^
      malinois.hashCode ^
      maltese.hashCode ^
      mastiff.hashCode ^
      mexicanhairless.hashCode ^
      mix.hashCode ^
      mountain.hashCode ^
      newfoundland.hashCode ^
      otterhound.hashCode ^
      ovcharka.hashCode ^
      papillon.hashCode ^
      pekinese.hashCode ^
      pembroke.hashCode ^
      pinscher.hashCode ^
      pitbull.hashCode ^
      pointer.hashCode ^
      pomeranian.hashCode ^
      poodle.hashCode ^
      pug.hashCode ^
      puggle.hashCode ^
      pyrenees.hashCode ^
      redbone.hashCode ^
      retriever.hashCode ^
      ridgeback.hashCode ^
      rottweiler.hashCode ^
      saluki.hashCode ^
      samoyed.hashCode ^
      schipperke.hashCode ^
      schnauzer.hashCode ^
      setter.hashCode ^
      sharpei.hashCode ^
      sheepdog.hashCode ^
      shiba.hashCode ^
      shihtzu.hashCode ^
      spaniel.hashCode ^
      springer.hashCode ^
      stbernard.hashCode ^
      terrier.hashCode ^
      tervuren.hashCode ^
      vizsla.hashCode ^
      waterdog.hashCode ^
      weimaraner.hashCode ^
      whippet.hashCode ^
      wolfhound.hashCode;
  }
}