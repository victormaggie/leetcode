class Solution:
    def guessNumber(self, n: int) -> int:

        left, right = 1, n

        while left <= right:
            mid = left + (right - left) // 2

            if guess(mid) == 0:
                return mid
            elif guess(mid) == -1:
                right = mid - 1
            else:
                left = mid + 1
        
        return -1

# binary search o(logn)
# space complexity o(n)

