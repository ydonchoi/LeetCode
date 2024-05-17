class Solution:
    def kidsWithCandies(self, candies: List[int], extraCandies: int) -> List[bool]:
        
        # candies의 원소들을 하나씩 k에 할당 받아서 extra와 합산하고, 합산된 결과를 add_candies(list)에 추가
        add_candies = [candy + extraCandies for candy in candies]
        
        # 여분의 사탕(k)을 추가로 받은 결과인 add가 기존에 가장 많이 보유하고 있었던 사탕 갯수(max(candies))오 비교
        # 기존의 최대 사탕 보유 갯수보다 같거나 큰 경우(Ture)와 아닌 경우(False)를 반환받아 res(list)에 추가
        res = [add >= max(candies) for add in add_candies]
        
        # 판정 결과값을 갖는 list 반환
        return res