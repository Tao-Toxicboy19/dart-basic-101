import 'encap.dart';

void main() {
  print('สติมา โปรแกรมเกิด สติเตลิด error กระจาย');
  var book1 = Book();
  book1.setBookName('Bitcoin');
  book1.price = 300;
  book1.author = 'Hello';
  print(book1.bookAuthor);
  print(book1.bookName);
  print(book1.bookPrice);
  book1.viewData();
}
