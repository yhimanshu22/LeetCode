class Solution {
public:
    string longestPalindrome(string s) {
        if(s.empty())return "";
        int start =0,maxLength = 1;

        for(int i=0;i<s.length();i++){
        //odd 
            int l = i,r = i;
            while(l >= 0 && r < s.size() && s[l] == s[r]){
                if(r - l +1 > maxLength){
                    start = l;
                    maxLength = r - l +1;
                }
                l--;
                r++;
            }



        //even
            l = i ;
           r = i+1;
           while(l >= 0 && r < s.size() && s[l] == s[r]){
            if(r - l+1 > maxLength){
                start = l;
                maxLength = r - l+1;
            }
            l--;
            r++;
           }
        }
     return s.substr(start, maxLength);
        
    }
};