class Funcionario < ActiveRecord::Base

	validates_presence_of :nome, :cpf, :identidade, :message => "Campo Obrigatório"
	has_many :sales
end
