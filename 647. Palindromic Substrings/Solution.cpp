class Solution {
public:
    int countSubstrings(string s) {
        int n = s.size();
        if(n == 0)return 0;
        int cnt = 0;

        for(int i=0;i<n;i++){
            //odd
            int l = i,r =i;
            while(l >= 0 && r < n && s[l] == s[r]){
                cnt++;
                l--;
                r++;
            }
 //even
            l = i,r = i+1;
            while(l >= 0 && r < n && s[l] == s[r]){
                cnt++;
                l--;
                r++;
            }
        }
        return cnt;
    }
};