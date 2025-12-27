class Solution:
    def rob(self, nums):
        prev1 = 0  # dp[i-1]
        prev2 = 0  # dp[i-2]

        for num in nums:
            temp = prev1
            prev1 = max(prev1, prev2 + num)
            prev2 = temp

        return prev1
nums = [2, 7, 9, 3, 1]

solution = Solution()
print(solution.rob(nums))
# | Metric | Value    |
# | ------ | -------- |
# | Time   | **O(n)** |
# | Space  | **O(1)** |
