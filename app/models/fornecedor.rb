class Fornecedor < ActiveRecord::Base

	has_many :pedidos

	validates_presence_of :empresa, :endereco, :cidade, :estado, :message => "Campo obrigatório"
	validates_uniqueness_of :empresa, :message => "Empresa já cadastrada"

	default_scope :order => 'empresa ASC'

  def self.search(search)
	  if search
	    where('empresa LIKE ?', "%#{search}%")
	  else
	    scoped
	  end
	end

end
