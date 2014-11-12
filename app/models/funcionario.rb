class Funcionario < ActiveRecord::Base

	validates_presence_of :nome, :cpf, :identidade, :message => "Campo Obrigatório"
	has_many :sales

	default_scope :order => 'nome ASC'

  def self.search(search)
	  if search
	    where('nome LIKE ?', "%#{search}%")
	  else
	    scoped
	  end
	end
end
