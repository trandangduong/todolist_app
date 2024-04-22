import 'package:realm/realm.dart'; // import realm package

//part 'catalogy_realm_entity.g.dart'; // declare a part file.

@RealmModel()
class $_CatalogyRealmEntity {
  @PrimaryKey()
  late ObjectId id;
  late String name;
  late int? iconCodePoint; //save icon in flutter Icons.
}
