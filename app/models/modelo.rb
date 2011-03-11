class Modelo < ActiveRecord::Base
	
	#Validations
	#validates_presence_of :c_id
	#validates_presence_of :tipoViatura_id
	#validates_presence_of :combustivel_id
	validates :modelo, :presence => true
	validates :modelo, :uniqueness => true
	validates :anoInicial, :anoFinal, :numericality => {:greater_than_or_equal_to => 1700}
	validates_presence_of :anoInicial, :anoFinal, :if => :ensure_anoInicial_less_than_final?
	
	#relationships
	belongs_to :marca
	belongs_to :tipoViatura
	belongs_to :combustivel
	
	#assegura que o ano incial é menor que o final
	def ensure_anoInicial_less_than_final?
		if anoInicial > anoFinal
			errors[:base] << "Ano Inicial não pode ser maior que o Ano Final"
			return false
		else 
			return true
		end
	end
	
	def nome_marca 
		Marca.nome
	end

end
