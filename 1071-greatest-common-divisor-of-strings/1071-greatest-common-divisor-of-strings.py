class Solution:
    def gcdOfStrings(self, str1: str, str2: str) -> str:
        def gcd(length_1, length_2):
            while length_2:
                length_1, length_2 = length_2, length_1 % length_2
            return length_1
        GOSs = gcd(len(str1), len(str2))
        div_str = str1[:GOSs]
        if div_str * (len(str1)//GOSs) == str1 and div_str * (len(str2)//GOSs) == str2 : return div_str
        else: return ''