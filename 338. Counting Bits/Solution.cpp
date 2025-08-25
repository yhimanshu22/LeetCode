class Solution {
public:
    vector<int> countBits(int n) {
        vector<int> ans(n+1);

        for(int i=1 ; i<= n ;i++){
           int x = i, cnt =0;
           while(x){
            x &= (x-1);
            cnt++;
           } 
           ans[i] = cnt;
        }

        return ans;
    }
};