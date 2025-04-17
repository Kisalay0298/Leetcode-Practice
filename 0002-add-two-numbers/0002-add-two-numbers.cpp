/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode() : val(0), next(nullptr) {}
 *     ListNode(int x) : val(x), next(nullptr) {}
 *     ListNode(int x, ListNode *next) : val(x), next(next) {}
 * };
 */
class Solution {
public:
    ListNode* addTwoNumbers(ListNode* l1, ListNode* l2) {
        ListNode *tempH=NULL;
        ListNode *temp=tempH;
        int carry=0;
        while(l1!=NULL && l2!=NULL){
            ListNode *k = new ListNode((l1->val+l2->val+carry)%10);
            carry=(l1->val+l2->val+carry)/10;
            if(tempH==NULL){
                tempH=k;
                temp=k;
            }else{
                temp->next=k;
                temp=temp->next;
            }
            l1=l1->next;
            l2=l2->next;
        }
        while(l1){
            ListNode *k=new ListNode((l1->val + carry)%10);
            carry=(l1->val+carry)/10;
            if(carry>0 || l1){
                temp->next=k;
                temp=temp->next;
            }
            l1=l1->next;
        }
        while(l2){
            ListNode *k=new ListNode((l2->val + carry)%10);
            carry=(l2->val+carry)/10;
            if(carry>0 || l2){
                temp->next=k;
                temp=temp->next;
            }
            l2=l2->next;
        }
        if(carry){
            ListNode *k=new ListNode(carry);
            temp->next=k;
            temp=temp->next;
        }
        return tempH;
    }
};