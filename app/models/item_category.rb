class ItemCategory < ActiveRecord::Base
	#validates :name, :presence => true, :uniqueness => true
	validates_presence_of :name, :message => "Campo Obrigatório"
	validates_uniqueness_of :name, :message => "Nome já cadastrado"

	has_many :items

end
