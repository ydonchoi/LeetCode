class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        # below is one case of the shortest runtime codes
        num_map = {}

        for i, v in enumerate(nums):
            if target - v in num_map:
                return [i, num_map[target-v]]
            num_map[v] = i

        return num_map

        # my init trial (RT: 1800ms)
    # def twoSum(self, nums: List[int], target: int) -> List[int]:
    #     output = []
    #     idx, t = 0, 0
        
    #     while len(nums) > 0:
    #         idx_v = nums.pop(idx)
    #         for i, v in enumerate(nums):
    #             if idx_v + v == target:
    #                 output.append(t+idx)
    #                 output.append(t+i+1)
    #         t += 1

    #     return output
