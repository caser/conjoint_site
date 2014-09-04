class FactorialTree < ActiveRecord::Base
  has_one :root, class_name: "Node"
end
