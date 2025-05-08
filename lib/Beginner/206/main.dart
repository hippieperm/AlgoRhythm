/* * 문제
단일 연결(Linked) 리스트의 헤드가 주어졌을 때, 리스트를 역순으로 뒤집으세요.

* 조건
1. 연결 리스트의 노드 개수는 0≤n≤5000 입니다.
2. 각 노드는 -5000 <= Node.val <= 5000의 정수 값을 가집니다.

* 예시
예시 1
	입력: head = [1,2,3,4,5]
	출력: [5,4,3,2,1]
	설명: 리스트를 역순으로 뒤집으면 [5,4,3,2,1]이 됩니다.

예시 2
	입력: head = [1,2]
	출력: [2,1]
	설명: 리스트를 역순으로 뒤집으면 [2,1]이 됩니다.

예시 3
	입력: head = []
	출력: []
	설명: 빈 리스트는 그대로 빈 리스트로 반환됩니다. */

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? reverseList(ListNode? head) {
    // 이전 노드를 가리키는 포인터, 처음에는 null로 시작
    ListNode? prev = null;
    // 현재 노드를 가리키는 포인터, head부터 시작
    ListNode? current = head;

    // 연결 리스트의 끝에 도달할 때까지 반복
    while (current != null) {
      // 현재 노드의 다음 노드 저장 (포인터 변경 전에 미리 저장)
      ListNode? next = current.next;

      // 현재 노드의 next 포인터 방향을 이전 노드로 변경 (연결 방향 반전)
      current.next = prev;

      // 다음 반복을 위해 prev와 current 포인터 이동
      prev = current; // 이전 노드를 현재 노드로 업데이트
      current = next; // 현재 노드를 저장해둔 다음 노드로 이동
    }

    // 마지막 노드가 새로운 시작 노드(head)가 됨
    // prev는 원래 연결 리스트의 마지막 노드를 가리키게 됨
    return prev;
  }
}

ListNode? createList(List<int> values) {
  if (values.isEmpty) return null;
  ListNode head = ListNode(values[0]);
  ListNode current = head;
  for (int i = 1; i < values.length; i++) {
    current.next = ListNode(values[i]);
    current = current.next!;
  }
  return head;
}

void printList(ListNode? head) {
  ListNode? current = head;
  List<int> values = [];
  while (current != null) {
    values.add(current.val);
    current = current.next;
  }
  print(values);
}

void main() {
  // 테스트 케이스 1: [1,2,3,4,5]
  ListNode? head1 = createList([1, 2, 3, 4, 5]);
  print('입력: ');
  printList(head1);
  print('출력: ');
  printList(Solution().reverseList(head1));

  // 테스트 케이스 2: [1,2]
  ListNode? head2 = createList([1, 2]);
  print('\n입력: ');
  printList(head2);
  print('출력: ');
  printList(Solution().reverseList(head2));

  // 테스트 케이스 3: []
  ListNode? head3 = createList([]);
  print('\n입력: ');
  printList(head3);
  print('출력: ');
  printList(Solution().reverseList(head3));
}
