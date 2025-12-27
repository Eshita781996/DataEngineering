import heapq
from collections import Counter

class Solution:
    def topKFrequent(self, words, k):
        freq = Counter(words)

        heap = []
        for word, count in freq.items():
            heapq.heappush(heap, (-count, word))

        result = []
        for _ in range(k):
            result.append(heapq.heappop(heap)[1])

        return result
words = ["i","love","leetcode","i","love","coding"]
k = 2

solution = Solution()
print(solution.topKFrequent(words, k))
