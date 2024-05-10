class Solution:
    def searchInsert(self, nums: List[int], target: int) -> int:
        idx1 = 0
        idx2 = len(nums)
        out = -1

        while idx1 < idx2:

            mid = (idx1+idx2)//2

            if target < nums[mid]:
                idx2 -= 1      # 바보야.. -1을 했어야지.. mid를 넣고 계속 헤매고 있었네..

            if target > nums[mid]:
                idx1 += 1      # 바보야.. +1을 했어야지.. mid를 넣고 계속 혜메고 있었네..

            if target == nums[mid]:
               return mid

        return idx2