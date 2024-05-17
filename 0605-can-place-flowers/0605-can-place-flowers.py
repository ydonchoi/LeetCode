class Solution:
    def canPlaceFlowers(self, flowerbed: List[int], n: int) -> bool:
        
        # 꽃을 심을 수 있는 곳(place)을 place 변수로 생성
        # 양 끝에 [0,0]인 경우도 꽃을 심을 수 있기에 임의의 장소 0을 추가함
        place = [0]+flowerbed+[0]
        
        # 꽃을 심을 때마다 카운팅하기 위한 초기값 설정
        cnt = 0
        
        # 꽃을 심을 때마다 장소의 길이만큼 반복 실행
        for i in range(1,len(flowerbed)+1):
            
            # 꽃을 심을 수 있는 장소를 발견하면 꽃을 심고(1로 할당), 심은 꽃의 수를 카운팀
            if place[i-1:i+2] == [0,0,0]:
                place[i] = 1
                cnt+= 1
        
        # 심으려고 했던 꽃(n)보다 심을 수 있는 곳이 같거나 더 많다면 True 반환
        return True if cnt >= n else False
    
    # 추가적으로 cnt를 반환 받으면, 주어진 꽃밭에서 꽃을 심을 수 있는 모든 장소 수 확인 가능