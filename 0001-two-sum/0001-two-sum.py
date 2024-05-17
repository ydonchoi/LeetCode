class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:

        numToIndex: dict = {}
        
        for i, num in enumerate(nums):
    
            if target - num in numToIndex:
            
                return numToIndex[target-num], i
          
            numToIndex[num] = i
