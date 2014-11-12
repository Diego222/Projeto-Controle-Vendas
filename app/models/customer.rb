class Customer < ActiveRecord::Base

  validates_presence_of :nome, :sobrenome, :message => "Campo obrigatório"
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
