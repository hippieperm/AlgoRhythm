/* * 문제
주어진 문자열에서 마지막 단어의 길이를 구하는 문제입니다.
단어는 공백으로 구분되며, 마지막 단어 뒤에는 공백이 없고, 앞에만 있을 수 있습니다.

* 조건
1. 1 <= s.length <= 10^4
2. s는 영어 알파벳과 공백으로만 구성됩니다.

* 예시
예제 1
	입력: "Hello World"
	출력: 5
	설명: "World"는 길이가 5입니다.

예제 2
	입력: " fly me to the moon "
	출력: 4
	설명: "moon"의 길이는 4입니다. */

void main() {
  Solution().lengthOfLastWord("Hello World");
  Solution().lengthOfLastWord("   fly me   to   the moon  ");
  Solution().lengthOfLastWord("luffy is still joyboy");
}

class Solution {
  int lengthOfLastWord(String s) {
    int length = 0;
    int i = s.length - 1; //맨 마지막 인덱스를 가르키기 위해서 (전체길이 -1)

    while (i >= 0 && s[i] == ' ') {
      i--;
    }

    while (i >= 0 && s[i] != ' ') {
      length++;
      i--;
    }

    return length;
  }
}
