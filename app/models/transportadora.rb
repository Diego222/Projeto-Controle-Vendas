class Transportadora < ActiveRecord::Base
	validates_presence_of :nome, :message => "Campo Obrigatório"
end
