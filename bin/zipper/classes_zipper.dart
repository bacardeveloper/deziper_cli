// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:archive/archive.dart';
import 'dart:io';

class Sub_zipper {
  void extraction(String path_file, String path_out) {
    String chemin_de_sorti = path_out;
    var bytes = File(path_file).readAsBytesSync();

    var archive = ZipDecoder().decodeBytes(bytes);

    for (final file in archive) {
      final filename = file.name;
      if (file.isFile) {
        final data = file.content as List<int>;
        File(chemin_de_sorti + filename)
          ..createSync(recursive: true)
          ..writeAsBytesSync(data);
      } else {
        Directory(chemin_de_sorti + filename).create(recursive: true);
      }
      print("Fichier deziper OK");
      print("Sortie : " + chemin_de_sorti + filename);
    }
  }

  void compresser(String path_file, String path_out) {}

  Sub_zipper();
}

// ignore: unused_local_variable
Sub_zipper subZipper = new Sub_zipper();

void choix_commandes(String commande_un, String commande_deux, String path_file,
    String path_out) {
  if (commande_un != '' &&
      commande_deux != '' &&
      path_file != '' &&
      path_out != '') {
    if (commande_un == "sub") {
      switch (commande_deux) {
        case 'dezip':
          subZipper.extraction(path_file, path_out);
          break;
        default:
          print('commandes non reconnu');
          break;
      }
    }
  } else {
    print('verfier vos commandes');
  }
}
