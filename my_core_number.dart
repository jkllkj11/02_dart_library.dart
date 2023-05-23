//##dart：核心 - 数字、集合、字符串等
//#数字
//dart：core 库定义了 num、int 和 double 类，它们 有一些用于处理数字的基本实用程序。
//您可以分别使用 int 和 double 的方法将字符串转换为整数或双精度：parse()
void main(){
  assert(int.parse('42') == 42);
  assert(int.parse('0x42') == 66);
  assert(double.parse('0.50') == 0.5);
  //或者使用 num 的 parse（） 方法，如果可能的话，它会创建一个整数 否则为双精度：
  assert(num.parse('42') is int);
  assert(num.parse('0x42') is int);
  assert(num.parse('0.50') is double);
  //要指定整数的基数，请添加一个参数：radix
  assert(int.parse('42', radix: 16) == 66);
  //使用该方法转换 整数或双精度为字符串。指定右侧的位数 十进制，使用 toStringAsFixed（）。要指定 字符串中有效位数，使用 toStringAsPrecision（）：toString()
  // Convert an int to a string.
  assert(42.toString() == '42');

  // Convert a double to a string.
  assert(123.456.toString() == '123.456');

  // Specify the number of digits after the decimal.
  assert(123.456.toStringAsFixed(2) == '123.46');

  // Specify the number of significant figures.
  assert(123.456.toStringAsPrecision(2) == '1.2e+2');
  assert(double.parse('1.2e+2') == 120.0);
}