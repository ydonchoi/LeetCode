class Solution:
    def kidsWithCandies(self, candies: List[int], extraCandies: int) -> List[bool]:
        add_candies = [candy + extraCandies for candy in candies]
        res = [add >= max(candies) for add in add_candies]
        return res