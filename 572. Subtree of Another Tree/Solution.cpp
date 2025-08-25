/**
 * Definition for a binary tree node.
 * struct TreeNode {
 *     int val;
 *     TreeNode *left;
 *     TreeNode *right;
 *     TreeNode() : val(0), left(nullptr), right(nullptr) {}
 *     TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
 *     TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
 * };
 */
class Solution {
    bool helper(TreeNode* s ,TreeNode* t){
        if(!s && !t )return true;
        if(!s || !t)return false;
        return s->val == t->val && helper(s->left,t->left) && helper(s->right,t->right);
    }
public:
        bool isSubtree(TreeNode* root, TreeNode* subRoot) {
        if (!subRoot) return true;     // empty tree is always a subtree
        if (!root) return false;       // main tree empty, but subRoot not

        if (helper(root, subRoot)) return true;

        return isSubtree(root->left, subRoot) ||
               isSubtree(root->right, subRoot);
    }

};