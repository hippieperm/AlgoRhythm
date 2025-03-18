/* * 문제
로마 숫자는 7개의 서로 다른 기호로 표현됩니다: I, V, X, L, C, D, M.

| **기호** | **값**  |
|----------|----------|
| I        | 1        |
| V        | 5        |
| X        | 10       |
| L        | 50       |
| C        | 100      |
| D        | 500      |
| M        | 1000     |

예를 들어, 2는 로마 숫자로 II로 쓰이며, 이는 1을 두 번 더한 것입니다. 
12는 XII로 쓰이며, 이는 X + II로 표현됩니다. 
숫자 27은 XXVII로 쓰이며, 이는 XX + V + II입니다.

로마 숫자는 일반적으로 왼쪽에서 오른쪽으로 큰 숫자부터 작은 숫자 순서로 작성됩니다. 
하지만 4는 IIII가 아니라 IV로 작성됩니다. 
이는 1이 5 앞에 와서 5에서 1을 빼기 때문에 4가 되기 때문입니다. 
동일한 원칙이 숫자 9에도 적용되며, 이는 IX로 작성됩니다. 

다음의 6가지 경우에는 뺄셈 원칙이 사용됩니다:
- I는 V(5)와 X(10) 앞에 위치하여 4와 9를 만듭니다.  
- X는 L(50)과 C(100) 앞에 위치하여 40과 90을 만듭니다.  
- C는 D(500)와 M(1000) 앞에 위치하여 400과 900을 만듭니다.

주어진 로마 숫자 문자열 's'를 정수로 변환하세요.

* 조건
1. 1 ≤ s.length ≤ 15
2. s는 "I", "V", "X", "L", "C", "D", "M"으로만 구성됩니다.
3. 유효한 로마 숫자 문자열이 주어집니다.

* 예시
예제 1
	입력: s = "III"
	출력: 3
	설명: III = 3.

예제 2:
	입력: s = "LVIII"
	출력: 58
	설명: L = 50, V= 5, III = 3.

예제 3:
	입력: s = "MCMXCIV"
	출력: 1994
	설명: M = 1000, CM = 900, XC = 90 and IV = 4. */

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
