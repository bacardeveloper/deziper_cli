// ignore_for_file: unnecessary_new, non_constant_identifier_names

import 'package:dcli/dcli.dart';

import 'zipper/ascii.dart';
import 'zipper/classes_zipper.dart';
import 'package:random_string/random_string.dart';

void main() {
  print(decoration);
  print(commandes_liste[0] + ' : avoir une documentation');

  //String path_file = r'C:\Users\niwrad\Desktop\fichier_azip.zip';
  //String path_out = r'C:\Users\niwrad\Desktop\';

  String comandes = ask('commandes: ', required: true);
  List commandes_array = comandes.split(" ");

  String cmd_un = commandes_array[0];
  String cmd_deux = commandes_array[1];
  String cmd_trois = commandes_array[2];
  String cmd_quatre = commandes_array[3];
  choix_commandes(cmd_un, cmd_deux, cmd_trois, cmd_quatre);
}
