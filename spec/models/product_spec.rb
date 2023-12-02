require 'rails_helper'

RSpec.describe Product, type: :model do
  # Esse produto será criado será apenas VÁLIDO caso tenha os parâmetros correto do modelo
  it 'É valido com nome, quantity, price e description' do
    product = Product.new(name: 'Produto Teste', quantity: 20, price: 10, description: 'Rspec Teste')
    expect(product).to be_valid
  end

 # Esse por exemplo, não irá funcionar, porque não tem os parâmetros fornecidos do modelo(name, quantity, price, e decimal)
  it 'não é válido sem nome' do
    product = Product.new(quantity: 20, price: 10, description: 'Caso não tenha nome')
  end
end
