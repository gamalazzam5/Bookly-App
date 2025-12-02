import 'package:hive/hive.dart';

import '../../features/home/domain/entities/book_entity.dart';

void saveData(List<BookEntity> books,String boxName) async{
  var box = Hive.box<BookEntity>(boxName);
  box.addAll(books);
}