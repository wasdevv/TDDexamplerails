## Introdução

Projeto Ruby on Rails 7.1(Ultima versão), feito pra ser um mini-projeto mostrando o básico do TDD(Test-driven Development)

O uso desse projeto, inicialmente você liga o servidor com rails s, porém antes, precisa usar os seguintes comandos: rails db:drop, db:create e db:migrate.

Inicialmente, esse projeto tem como base o básico de como usar o TDD em projetos. TDD é uma forma de fazer testes, seja por exemplo em um novo Produto, características de um Usuário, testes em banco de dados, garantindo que as validações, relações e métodos estejam corretas e prontas para serem usadas.


## Configs e Dependências

- Ruby - 3.2.2
- Rails - 7.1.1

- GEM rspec

## Ilustração melhor de como funciona o TDD em cada etapa(3 etapas)
[![Ilustração de como funciona o TDD](https://i.imgur.com/TTynxpw.png)](https://imgur.com/TTynxpw)


- Esse código fornecido abaixo refere-se ao teste que o produto precisa ter os parâmetros certos, e caso não tenha, não irá funcionar.

```
RSpec.describe Product, type: :model do
  it 'É valido com nome, quantity, price e description' do
    product = Product.new(name: 'Produto Teste', quantity: 20, price: 10, description: 'Rspec Teste')
    expect(product).to be_valid
end
```
