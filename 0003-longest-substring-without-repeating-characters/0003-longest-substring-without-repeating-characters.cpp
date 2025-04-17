class Solution {
public:
    int lengthOfLongestSubstring(string s) {
        int maxi = 0;
        int start=0;
        unordered_map<int, int>m;
        for(int i=0;i<s.size();i++){
            if(m.find(s[i])!=m.end()){
                start = max(start, m[s[i]]+1);
            }
            maxi=max(i-start+1, maxi);
            m[s[i]]=i;
        }
        // maxi = max((int)(s.size() - start), maxi);
        return maxi;
    }
};