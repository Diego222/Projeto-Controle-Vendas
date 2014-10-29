class Fornecedor < ActiveRecord::Base

	has_many :pedidos

	validates_presence_of :empresa, :endereco, :cidade, :estado, :message => "Campo obrigatório"
	validates_uniqueness_of :empresa, :message => "Empresa já cadastrada"


end
