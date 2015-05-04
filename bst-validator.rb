# Binary Search Tree validator
# Desc: A program representing a binary tree and a method to validate if it is a binary search tree.
# Author:: Christian Idylle (idylle.christian@gmail.com)
# License:: The MIT License (MIT) Copyright (c) 2015 Christian Idylle

class Node
	attr_accessor :value, :left, :right
	def initialize(value=nil, left=nil, right=nil)
		@value = value
		@left = left
		@right = right 
	end
end

def insert(root,value)
	if value < root.value 
		if root.left.nil?
			root.left = Node.new(value)
			return
		else
			insert(root.left,value)
		end

	else
		if root.right.nil?
			root.right = Node.new(value)
			return
		else
			insert(root.right,value)
		end
	 end 
end

# method for inorder tree traversal
def in_order(root) 
	in_order(root.left) if !root.left.nil?
	puts root.value
	in_order(root.right) if !root.right.nil?
end

# method to check if it is a binary search tree
def bin_tree?(root)
	return true if root.left.nil?&&root.right.nil?
	return false if root.left.value>root.value or root.right.value<root.value
	return bin_tree?(root.left) && bin_tree?(root.right)
end







