class Solution:
    def maxArea(self, height: List[int]) -> int:
        left = 0
        right = -1
        maxarea = 0
        while left < len(height)+right:
            area = (len(height)+right-left) * min(height[left],height[right])
            if maxarea < area:
                maxarea = area
            if height[left] < height[right]:
                left += 1
            else:
                right -= 1
        return maxarea