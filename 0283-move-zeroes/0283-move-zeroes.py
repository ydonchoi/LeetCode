class Solution:
    def moveZeroes(self, nums: List[int]) -> None:
        """
        Do not return anything, modify nums in-place instead.
        """
        
        # 두 포인터 지정
        a, b = 0, 0
        
        # 숫자 배열에서 반복 탐색
        while a < len(nums):
            
            # 탐색 포인터가 0이 아닌 포인트를 발견하면
            if nums[a] != 0:
                
                # 0을 가진 포인터와 값 교체
                tmp = nums[a]
                nums[a] = nums[b]
                nums[b] = tmp
                b += 1
            a += 1
        return nums