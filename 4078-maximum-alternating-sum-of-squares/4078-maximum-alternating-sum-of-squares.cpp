class Solution {
public:
    long long maxAlternatingSum(vector<int>& nums) {
        for(int i=0;i<nums.size();i++){
            nums[i]=abs(nums[i]);
        }
        sort(nums.begin(), nums.end());
        long long ans =0;
        int len = nums.size();
        if(len == 1){
            return nums[0]*nums[0];
        }
        if(len%2==1){
            ans = nums[len/2] * nums[len/2];
        }
        for(int i=0;i<len/2;i++){
            ans = ans + (nums[len-i-1] * nums[len-i-1]) - (nums[i] * nums[i]);
        }
        return ans;
    }
};