class Item < ActiveRecord::Base
	has_many :line_items
	belongs_to :item_category
	belongs_to :fornecedor

	validates :sku, :presence => true, :uniqueness => true
	validates_presence_of :name, :message => "em branco"
	validates_uniqueness_of :name, :message => "Item já cadastrado"
	validates :price, :presence => true
	validates :stock_amount, :presence => true

	default_scope :order => 'name ASC'

	def self.search(search)
	  if search
	    where('name LIKE ?', "%#{search}%")
	  else
	    scoped
	  end
	end

end
