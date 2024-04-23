class Solution:
    def productExceptSelf(self, nums: List[int]) -> List[int]:
        res = []
        product = 1
        for idx in range(len(nums)):
            res.append(product)
            product *= nums[idx]
        product = 1
        
        for idx in range(len(nums)-1, -1, -1):
            res[idx] *= product
            product *= nums[idx]
        
        return res