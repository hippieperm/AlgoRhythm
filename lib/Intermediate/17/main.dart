// *문제*
// 다음은 2부터 9까지 포함된 숫자 문자열이 주어질 때,
// 해당 숫자가 나타낼 수 있는 모든 가능한 문자 조합을 반환하는 문제입니다.
// 답은 임의의 순서로 반환하면 됩니다.

// 숫자와 문자 간의 매핑(전화 버튼처럼)은 아래와 같습니다. 숫자 1은 어떤 문자와도 매핑되지 않습니다.

// *조건*
// 0 <= digits.length <= 4
// digits[i]는 ['2', '9'] 범위에 속하는 숫자입니다.

// *예시*
// 예시 1:
// 	입력: digits = "23"
// 	출력: ["ad","ae","af","bd","be","bf","cd","ce","cf"]

// 예시 2:
// 	입력: digits = ""
// 	출력: []

// 예시 3:
// 	입력: digits = "2"
// 	출력: ["a","b","c"]

void main() {
  final solution = Solution();

  // 테스트 케이스 1
  final test1 = solution.letterCombinations("23");
  print(
      '테스트 케이스 1: $test1'); // 예상 출력: ["ad","ae","af","bd","be","bf","cd","ce","cf"]

  // 테스트 케이스 2
  final test2 = solution.letterCombinations("");
  print('테스트 케이스 2: $test2'); // 예상 출력: []

  // 테스트 케이스 3
  final test3 = solution.letterCombinations("2");
  print('테스트 케이스 3: $test3'); // 예상 출력: ["a","b","c"]
}

class Solution {
  List<String> letterCombinations(String digits) {
    if (digits.isEmpty) return [];

    final digitToChar = {
      '2': ['a', 'b', 'c'],
      '3': ['d', 'e', 'f'],
      '4': ['g', 'h', 'i'],
      '5': ['j', 'k', 'l'],
      '6': ['m', 'n', 'o'],
      '7': ['p', 'q', 'r', 's'],
      '8': ['t', 'u', 'v'],
      '9': ['w', 'x', 'y', 'z'],
    };

    final result = <String>[];
    final current = <String>[];

    void backtrack(int index) {
      if (index == digits.length) {
        result.add(current.join());
        return;
      }

      final digit = digits[index];
      final letters = digitToChar[digit]!;
      for (final letter in letters) {
        current.add(letter);
        backtrack(index + 1);
        current.removeLast();
      }
    }

    backtrack(0);
    return result;
  }
}
