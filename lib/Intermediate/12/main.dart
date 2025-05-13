// 다음은 로마 숫자를 나타내는 7개의 서로 다른 기호와 그 값입니다:

// | **기호** | **값** |
// |:-------:|:------:|
// |   I     |    1   |
// |   V     |    5   |
// |   X     |   10   |
// |   L     |   50   |
// |   C     |  100   |
// |   D     |  500   |
// |   M     | 1000   |

// 로마 숫자는 가장 높은 자리값부터 낮은 자리값까지 순서대로 변환한 결과를 연결하여 형성됩니다.
// 자리값을 로마 숫자로 변환하기 위해 다음 규칙을 따릅니다:

// 1. 값이 4 또는 9로 시작하지 않을 경우:
//    - 입력값에서 뺄 수 있는 최대값을 나타내는 기호를 선택합니다.
//    - 그 기호를 결과에 추가합니다.
//    - 해당 값만큼 입력값에서 뺀 나머지를 다시 로마 숫자로 변환합니다.

// 2. 값이 4 또는 9로 시작할 경우:
//    - 빼기 형식(subtractive form)을 사용하여 다음 기호에서 하나를 뺀 값을 나타냅니다.
//      예를 들어, 4는 5(V)보다 1(I) 적으므로 `IV`, 9는 10(X)보다 1(I) 적으므로 `IX`입니다.
//    - 사용되는 빼기 형식은 다음과 같습니다:
//      - 4 (IV), 9 (IX), 40 (XL), 90 (XC), 400 (CD), 900 (CM)

// 3. 같은 기호를 연속해서 나타낼 수 있는 최대 횟수는 3회:
//    - 10의 거듭제곱(I, X, C, M)만 연속해서 최대 3번까지 사용할 수 있습니다.
//    - 5(V), 50(L), 500(D)은 연속해서 사용할 수 없습니다.
//      만약 4번 이상 사용해야 할 경우 빼기 형식을 사용합니다.

// 입력된 정수를 로마 숫자로 변환하는 문제입니다.

// 예시 1:
// - 입력: num = 3749
// - 출력: "MMMDCCXLIX"

// 설명:
// - 3000 = `MMM` (1000(M) + 1000(M) + 1000(M))
// - 700 = `DCC` (500(D) + 100(C) + 100(C))
// - 40 = `XL` (10(X)가 50(L)보다 적음)
// - 9 = `IX` (1(I)이 10(X)보다 적음)

// 참고: `49`는 `1(I)이 50(L)보다 적다`고 표현하지 않습니다. 변환은 자리값에 기반합니다.

// ---

// 예시 2:
// - 입력: `num = 58`
// - 출력: `"LVIII"`

// 설명:
// - 50 = `L`
// - 8 = `VIII`

// ---

// 예시 3:
// - 입력: `num = 1994`
// - 출력: `"MCMXCIV"`

// 설명:
// - 1000 = `M`
// - 900 = `CM`
// - 90 = `XC`
// - 4 = `IV`

// ---

// 제약 조건:
// - 1 <= num <= 3999

void main() {
  // 테스트 케이스 실행
  final solution = Solution();

  // 테스트 케이스 1
  final test1 = solution.intToRoman(3749);
  print('테스트 케이스 1: $test1'); // 예상 출력: MMMDCCXLIX

  // 테스트 케이스 2
  final test2 = solution.intToRoman(58);
  print('테스트 케이스 2: $test2'); // 예상 출력: LVIII

  // 테스트 케이스 3
  final test3 = solution.intToRoman(1994);
  print('테스트 케이스 3: $test3'); // 예상 출력: MCMXCIV

  // 추가 테스트 케이스
  final test4 = solution.intToRoman(4);
  print('테스트 케이스 4: $test4'); // 예상 출력: IV

  final test5 = solution.intToRoman(9);
  print('테스트 케이스 5: $test5'); // 예상 출력: IX

  final test6 = solution.intToRoman(40);
  print('테스트 케이스 6: $test6'); // 예상 출력: XL

  final test7 = solution.intToRoman(3999);
  print('테스트 케이스 7: $test7'); // 예상 출력: MMMCMXCIX
}

class Solution {
  String intToRoman(int num) {
    // 가장 큰 값부터 순서대로 값과 해당 로마 숫자 심볼을 정의
    final values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1];

    final symbols = [
      'M',
      'CM',
      'D',
      'CD',
      'C',
      'XC',
      'L',
      'XL',
      'X',
      'IX',
      'V',
      'IV',
      'I'
    ];

    String result = '';
    int remaining = num;

    // 가장 큰 값부터 처리
    for (int i = 0; i < values.length; i++) {
      // 현재 값으로 나눌 수 있는 만큼 반복
      while (remaining >= values[i]) {
        result += symbols[i];
        remaining -= values[i];
      }

      // 남은 숫자가 없으면 종료
      if (remaining == 0) break;
    }

    return result;
  }
}
