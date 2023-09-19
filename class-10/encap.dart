class Book {
  String _bookName = '';
  int _price = 0;
  String _authpr = '';

  void setBookName(String bookName) {
    _bookName = bookName;
  }

  set price(int price) => _price = price;
  set author(String author) => _authpr = author;

  get bookName => _bookName;
  get bookPrice => _price;
  get bookAuthor => _authpr;

  viewData() => print('Name-->${_bookName}<---->Price--->${_price}');
}
