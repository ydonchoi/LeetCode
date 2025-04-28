class Solution:
    def wordPattern(self, pattern: str, s: str) -> bool:
        
        words = s.split()   # 단어 단위로 분리
        if len(pattern) != len(words):  # 패턴과 단어의 길이가 다르면 False
            return False

        # 패턴과 단어를 매핑할 딕셔너리 생성
        p2w = {}
        w2p = {}
        
        for p, w in zip(pattern, words):

            # 신규 등장(p2w. w2p 모두 없을 때) 패턴과 단어를 딕셔너리에 추가
            if p not in p2w and w not in w2p:
                p2w[p] = w
                w2p[w] = p

            # 패턴과 단어가 이미 등장했는데, 매핑이 다르면 False
            elif p not in p2w or w not in w2p:
                return False

            # 패턴과 단어가 이미 등장했는데, 매핑이 다르면 False
            elif p2w[p] != w or w2p[w] != p:
                return False
        
        return True
