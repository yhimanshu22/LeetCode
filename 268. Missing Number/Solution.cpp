class Solution {
public:
    int missingNumber(vector<int>& nums) {
        int n = nums.size();

        int sum = n*(n+1)/2;
         
         int arraySum = 0;

        for(int num : nums){
         arraySum += num;
        }

        return sum - arraySum;
    }
};