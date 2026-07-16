void main() {
  divide(num1: 10, num2: 2);    
  divide(num1: 10, num2: null); 
  divide(num1: 10, num2: 0);   
}

void divide({required double num1, required double? num2}) {
  try {
    
    double safeNum = num2 ?? 1;

    if (safeNum == 0) {
      throw Exception("لا يمكن القسمة على صفر!");
    }

    print("الناتج: ${num1 / safeNum}");
  } catch (e) {
    print("حدث خطأ: $e");
  }
}