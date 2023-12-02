require 'rails_helper'

RSpec.describe ProductsHelper, type: :helper do
  # Criação de um Produto com os parâmetros
  let(:product) { double('Product', name: 'Pão de Queijo', quantity: 100, price: 30, description: "Muito gostoso!.") }
  
  describe "#infos_do_produto" do
    it "Mostrar as informações" do
      # Usar o expect para verificar se a saída contêm os parâmetros
      expect(helper.display_product_info(product)).to include("Name: Teste1")
      expect(helper.display_product_info(product)).to include("Quantity: 100")
      expect(helper.display_product_info(product)).to include("Price: 30")
      expect(helper.display_product_info(product)).to include("Description: Descrição Teste")
    end
  end
end
