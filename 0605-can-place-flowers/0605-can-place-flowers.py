class Solution:
    def canPlaceFlowers(self, flowerbed: List[int], n: int) -> bool:
        place = [0]+flowerbed+[0]
        cnt = 0
        for i in range(1,len(flowerbed)+1):
            if place[i-1:i+2] == [0,0,0]:
                place[i] = 1
                cnt+= 1
        return True if cnt >= n else False