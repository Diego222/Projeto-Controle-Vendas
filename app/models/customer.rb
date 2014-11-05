class Customer < ActiveRecord::Base

  validates_presence_of :nome, :sobrenome, :message => "Campo obrigatório"
  has_many :sales
end
