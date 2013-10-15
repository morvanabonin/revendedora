<h3> Trabalho </h3>
Desenvolver um sistema para uma revendedora de automóveis.<br />
  O sistema deve ter: <br />
• Classes que definam pessoas (clientes PF, clientes PJ e
  vendedores), veículos (carros e bicicletas), vendas e o
  que mais acharem necessário. <br />
• Herança entre classes <br />
• Ao menos duas classes abstratas <br />
• Métodos abstratos são bem-vindos! <br />
• Ao menos uma interface <br />
• Métodos sobrecarregados <br />
• Polimorfismo externo <br />
• Um método poder receber tipos diferentes de objetos sem
  sobrecarga. <br />
• Uma “pseudo-interface” com o usuário <br />
• Pode ser via console <br />
  Opções de: <br />
• Cadastrar um cliente <br />
• Cadastrar um veículo <br />
• Cadastrar um vendedor <br />
• Cadastrar uma venda <br />
• Exibir lista de vendedores e selecionar <br />
• Exibir lista de clientes e selecionar <br />
• Exibir lista de veículos e selecionar <br />
• Obs: embora deva haver classes para carros e bicicletas, bem
  como para clientes PF e PJ, para os cadastros pode-se simplificar
  para apenas um tipo de cliente e de veículo, caso desejem <br />
• Uma opção de imprimir nota da venda, que deve informar
  dados de cliente, vendedor, veículo e preço da venda,
  além de outras informações que acharem relevantes. <br />
• Boas práticas de programação. <br />

<h3> Funcionalidades do Sistema </h3>

O sistema de Revenda deve comportar as seguintes funcionalidades: <br />

 - Cadastro de Clientes (PF/PJ) <br />
	-- Um usuário não pode cadastrar os dois ao mesmo tempo.
 - Cadastro de Vendedor
 - Cadastro de Veiculo (Carro/Bicicleta) <br />
	-- Cadastrar a quantidade de cada. <br />
	Plus <br />
	-- Caso haja uma venda, mostrar a quantidade menos a venda <br />
   	(Ex.: 10 carros, vendido 1, total no estoque 9 do modelo tal)

 - Na hora da compra deve ser exibida as listas de Vendedor, Cliente 
   e Veiculo com seus respectivos dados. <br />
	-- Deverá ser possível o cliente comprar mais de um veículo ou veículos diferenciado, 
	no caso um carro e uma bicicleta

 - Na impressão da nota deve ter os dados do vendedor, cliente e veículo. <br />
	-- No caso de veículo deve ter a quantidade e o preço unitário. <br />
	-- Informar o valor total na nota.<br />

<h3>Padrões de Projeto</h3>

Atributos <br />
Private e Protected -> Deve seguir-se de um underline antes do nome ex.: $_atributo <br />
Public -> Normal, apenas o nome ex.: $atributo

