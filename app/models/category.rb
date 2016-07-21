class Category < ApplicationRecord
	# belongs_to :parrent, class_name: 'Category'
	# has_many :children, class_name: 'Category', foreign_key: 'parrent_id'
	acts_as_nested_set

	# scope :sorted, -> {order(position: :asc)}
end
