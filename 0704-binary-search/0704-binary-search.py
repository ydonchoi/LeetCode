class Solution:
    def search(self, nums: List[int], target: int) -> int:
        a, b = 0, len(nums) - 1

        while a <= b:
            mid = (a + b) // 2
            if target == nums[mid]:
                return mid
            elif target > nums[mid]:
                a = mid + 1
            else:
                b = mid - 1

        # target 값이 nums 리스트에 없는 경우
        return -1
