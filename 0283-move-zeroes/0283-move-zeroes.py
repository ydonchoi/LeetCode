class Solution:
    def moveZeroes(self, nums: List[int]) -> None:
        """
        Do not return anything, modify nums in-place instead.
        """
        a, b = 0, 0
        while a < len(nums):
            if nums[a] != 0:
                tmp = nums[a]
                nums[a] = nums[b]
                nums[b] = tmp
                b += 1
            a += 1
        return nums