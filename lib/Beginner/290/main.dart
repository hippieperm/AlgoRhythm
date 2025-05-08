/* * 문제
문자열 pattern과 문자열 s가 주어집니다.
pattern의 각 문자가 s의 단어에 매핑될 수 있는지 확인하세요.

즉, 일대일 대응 관계로 두 문자열이 일치하는지 판단해야 합니다.
	- 같은 문자는 s의 같은 단어로 매핑되어야 합니다.
	- 다른 문자는 다른 단어로 매핑되어야 합니다.

* 조건
1 <= pattern.length <= 300
pattern은 영어 소문자로만 이루어져 있습니다.
s는 영어 소문자와 공백으로 이루어져 있으며, 공백은 하나 이상의 단어를 구분하는 데 사용됩니다.
s는 공백 문자로 시작하거나 끝나지 않으며, 단어 사이에는 하나의 공백만 존재합니다.

* 예시
예제 1
	입력: pattern = "abba", s = "dog cat cat dog"
	출력: true
	설명: 
		'a' → "dog", 'b' → "cat". 
		각 문자가 정확히 일대일로 매핑됩니다.

예제 2:
	입력: pattern = "abba", s = "dog cat cat fish"
	출력: false
	설명:
		'a' → "dog", 'b' → "cat", 'b'가 다른 단어로 매핑되어 불가능합니다.
	
예제 3:
	입력: pattern = "aaaa", s = "dog cat cat dog"
	출력: false
	설명:
		'a'가 "dog" 외의 단어로 매핑되었으므로 불가능합니다.

예제 4:
	입력: pattern = "abba", s = "dog dog dog dog"
	출력: false
	설명:
		'a'와 'b' 모두 같은 단어 "dog"로 매핑되어 불가능합니다. */

void main() {}

class Solution {
  bool wordPattern(String pattern, String s) {
    // s를 공백을 기준으로 단어 리스트로 분리
    List<String> words = s.split(' ');

    // 패턴과 단어의 개수가 다르면 false
    if (pattern.length != words.length) return false;

    // 문자와 단어의 매핑을 저장할 Map
    Map<String, String> charToWord = {};
    Map<String, String> wordToChar = {};

    for (int i = 0; i < pattern.length; i++) {
      String char = pattern[i];
      String word = words[i];

      // 이미 매핑된 문자가 있는데 다른 단어와 매핑되려고 하면 false
      if (charToWord.containsKey(char) && charToWord[char] != word) {
        return false;
      }

      // 이미 매핑된 단어가 있는데 다른 문자와 매핑되려고 하면 false
      if (wordToChar.containsKey(word) && wordToChar[word] != char) {
        return false;
      }

      // 매핑 저장
      charToWord[char] = word;
      wordToChar[word] = char;
    }

    return true;
  }
}
