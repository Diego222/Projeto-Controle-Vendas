class Customer < ActiveRecord::Base

  validates_presence_of :phone_number, :message => "Campo obrigatório"
  has_many :sales
end
