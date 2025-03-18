void main() {
  print(romanToInt('III')); // 출력: 3
  print(romanToInt('IV')); // 출력: 4
  print(romanToInt('IX')); // 출력: 9
  print(romanToInt('LVIII')); // 출력: 58
  print(romanToInt('MCMXCIV')); // 출력: 1994
}

int romanToInt(String input) {
  int result = 0;

  Map<String, int> romanValues = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000,
  };

  for (var i = 0; i < input.length; i++) {
    int currentValue = romanValues[input[i]]!;
    int nextVal = i + 1 < input.length ? romanValues[input[i + 1]]! : 0;

    // 다음문자열이 존재 && 다음문자의 값보다 현재값이 크면 빼기
    if (currentValue < nextVal) {
      result -= currentValue;
    } else {
      result += currentValue;
    }
  }
  return result;
}
