require 'rails_helper'

# Esse produto será criado será apenas VÁLIDO caso tenha os parâmetros correto do modelo
RSpec.describe Product, type: :model do
  it 'É valido com nome, quantity, price e description' do
    product = Product.new(name: 'Produto Teste', quantity: 20, price: 10, description: 'Rspec Teste')
    expect(product).to be_valid
end
