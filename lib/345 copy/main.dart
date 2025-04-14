/* * 문제
주어진 두 문자열 ransomNote와 magazine이 있습니다.
ransomNote를 작성하기 위해 필요한 모든 문자를 magazine에서 가져올 수 있는지 확인하세요.
각 문자는 magazine에서 단 한 번만 사용할 수 있습니다.

True 또는 False를 반환하세요.

* 조건
1 <= ransomNote.length, magazine.length <= 10⁵
ransomNote와 magazine은 소문자로만 구성됩니다.

* 예시
예제 1
	입력: ransomNote = "a", magazine = "b"
	출력: false
	설명: `ransomNote`를 작성하기 위해 필요한 'a'를 `magazine`에서 찾을 수 없습니다.


예제 2:
	입력: ransomNote = "aa", magazine = "ab"
	출력: false
	설명: `ransomNote`를 작성하기 위해 필요한 두 개의 'a'가 `magazine`에 존재하지 않습니다.

	
예제 3:
	입력: ransomNote = "aa", magazine = "aba"
	출력: true
	설명: `ransomNote`를 작성하기 위해 필요한 두 개의 'a'를 `magazine`에서 가져올 수 있습니다.
 */

void main() {
  Solution solution = Solution();

  // 예제 1
  print(solution.canConstruct("a", "b")); // false

  // 예제 2
  print(solution.canConstruct("aa", "ab")); // false

  // 예제 3
  print(solution.canConstruct("aa", "aba")); // true
}

class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    // magazine을 리스트로 변환하여 문자 제거에 사용
    List<String> magazineList = magazine.split('');

    for (int i = 0; i < ransomNote.length; i++) {
      String char = ransomNote[i];
      // magazineList에서 문자를 제거
      if (!magazineList.remove(char)) {
        return false; // 문자를 제거할 수 없으면 false 반환
      }
    }

    return true;
  }
}

class Solution2 {
  bool canConstruct(String ransomNote, String magazine) {
    // 각 문자의 빈도수를 저장할 Map
    Map<String, int> magazineCount = {};

    // magazine의 각 문자 빈도수 증가
    for (int i = 0; i < magazine.length; i++) {
      String char = magazine[i];
      magazineCount[char] = (magazineCount[char] ?? 0) + 1;
    }

    // ransomNote의 각 문자가 magazine에 충분히 있는지 확인
    for (int i = 0; i < ransomNote.length; i++) {
      String char = ransomNote[i];
      if (magazineCount[char] == null || magazineCount[char]! <= 0) {
        return false;
      }
      magazineCount[char] = magazineCount[char]! - 1;
    }

    return true;
  }
}
