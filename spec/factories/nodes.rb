# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :node, aliases: [:parent, :child] do
    factorial_tree nil
  end

  factory :root, class: Node do
    parent nil
  end

  factory :root_with_children, class: Node do
    parent nil
    children { build_list :node, 3 }
  end

  factory :node_with_children, class: Node do
    parent
    children { build_list :node, 3 }
  end
end
