class Node < ActiveRecord::Base
  belongs_to :factorial_tree

  # self-referential association for traversing the tree
  has_many :children, class_name: "Node", foreign_key: "parent_id"
  belongs_to :parent, class_name: "Node"
end
