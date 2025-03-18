void main() {
  print(Solution().strStr('sadbutsad', 'sad'));
  print(Solution().strStr('leetcode', 'leeto'));
}

class Solution {
  int strStr(String haystack, String needle) {
    return haystack.indexOf(needle);
  }
}
