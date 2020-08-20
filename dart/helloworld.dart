// Dart是一种面向对象的语言，所有能够使用变量引用的都是对象
// 任何保存在变量中的都是一个对象，无论是数字，函数，null都是对象，所有对象继承自Object类

void main() {
  print('Hello World!');

  // Dart本质上是动态类型语言，类型是可选的

  /**
   * **********************************        变量   ****************************************
   */

  // 变量的定义
  // 创建一个变量并进行初始化
  var str1 = 'ok'; // 可以用 var 声明变量
  // 变量仅存储对象的引用，这里的变量str1存储了一个String类型的对象引用。'ok'是这个String类型对象的值

  String str2 = 'no'; // 也可以显式声明变量

  // 如果对象不设定为单个类型，可以指定为动态类型
  dynamic str3 = 'lucy'; // 如果对象不限于单一类型
  print(str3);
  str3 = 53;
  print(str3);

  // 没有初始化的变量，默认为null。即使变量是数字类型，默认值也是null
  int defult;
  print(defult); // 输出null

  // 相邻字符串在编译的时候，会自动连接，但是中间的字符串不能为空
  var name = 'Wang' ' ' 'han';
  print(name);

  // 被final修饰的顶级变量或者类变量在第一次声明的时候就需要初始化
  // final变量与类变量在首次访问时才执行初始化，final变量在没有访问时，是不会自动赋值的
  final String teacher = 'Li';
  // const编译时的常量，const一经声明就不能再次赋值
  const String stu = 'sui';

  /**
   * ***************************************    内建类型   ******************************
   */

  // Number String Boolean List (也被称为 Array) Map Set Rune (用于在字符串中表示 Unicode 字符)  Symbol

  // Number

  var wow = 1; // int
  var wov = 1.1; // double

  /**
   * *************************************************   函数     *****************************************************
   */
  // 函数
  String sayHello(String name) {
    return 'Hello $name';
  }

  assert(sayHello is Function);
  print(sayHello('Bananna'));

  // 类型是可选的
  sayHello1(name) {
    return 'Hello $name';
  }

  print(sayHello1('Apple'));

  // 如果函数只是简单的返回一个表达式，可以用 =>
  String sayHello2(name) => 'Hello $name';

  // 命名可选参数函数
  // 大括号外是必填参数
  // 大括号内可以指定0个或多个参数，默认值用=
  // 与顺序无关，在调用的时候需要指定参数名
  void funx(int a, {int b, int c = 3, int d = 4, int e}) {
    print('$a $b $c $d $e');
  }

  funx(1, b: 3, d: 5);

  // 位置可选参数
  // 使用方括号[]，默认值用=
  // 方括号内的参数可以指定0或者多个
  // 在调用的时候参数会依次按顺序赋值
  void funy(int a, [int b, int c = 3, int d = 4, int e]) {
    print('$a $b $c $d $e');
  }

  funy(1, 3, 5);





}
