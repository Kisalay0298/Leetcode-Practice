class Solution {
public:
    int countPairs(vector<int>& nums, int k) {
        unordered_map<int, vector<int>> m;
        int count = 0;

        for (int i = 0; i < nums.size(); i++) {
            for (int index : m[nums[i]]) {
                if ((i * index) % k == 0) {
                    count++;
                }
            }
            m[nums[i]].push_back(i);
        }
        return count;
    }
};
