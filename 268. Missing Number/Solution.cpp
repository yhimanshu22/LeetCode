class Solution {
public:
    int missingNumber(vector<int>& nums) {
        int n = nums.size();
        int sum = n*(n+1)/2;
        
        int arraysum = 0;

        for(int num:nums){
            arraysum += num;
        }

        return sum - arraysum;
    }
};