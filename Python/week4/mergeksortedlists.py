class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

class Solution:
    def mergeTwoLists(self, list1, list2):
        dummy = ListNode()
        tail = dummy

        while list1 and list2:
            if list1.val <= list2.val:
                tail.next = list1
                list1 = list1.next
            else:
                tail.next = list2
                list2 = list2.next
            tail = tail.next

        tail.next = list1 if list1 else list2
        return dummy.next
# List 1: 1 -> 2 -> 4
l1 = ListNode(1, ListNode(2, ListNode(4)))

# List 2: 1 -> 3 -> 4
l2 = ListNode(1, ListNode(3, ListNode(4)))

solution = Solution()
merged = solution.mergeTwoLists(l1, l2)

# Print merged list
while merged:
    print(merged.val, end=" -> ")
    merged = merged.next
