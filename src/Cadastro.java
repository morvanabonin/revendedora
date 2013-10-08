
/**
 *
 * @author morvana
 */
import java.util.Scanner;

class Cadastro {

    public static Scanner leitor = new Scanner(System.in);
    public static int resposta = 1;
    
    /**
     * Método para pegar a resposta do Usuário e validar
     */
    public void getAnswerUser() {

        do {
            System.out.println("1 - CPF");
            System.out.println("2 - CNPJ");
            System.out.println("3 - Cód. Vendedor");
            System.out.println("0 - Sair");

            resposta = leitor.nextInt();
            if (!(resposta > 3 || resposta < 0)) {
                this.getClassOfType(resposta);
            } else {
                System.out.printf("Opção inválida! Escolha uma opção válida\n");
            }
        } while (resposta != 0);


    }
    
    /**
     * Método para instanciar a classe de acordo a resposta do usuário.
     */
    private void getClassOfType(int resposta) {

        switch (resposta) {
            case 0:
                System.out.println("Muito Obrigado!");
                break;
            case 1:
                ClientePF cpf = new ClientePF();
                cadastroPessoaPF(cpf);
                break;
            case 2:
                ClientePJ cnpj = new ClientePJ();
                break;
            case 3:
                Vendedor vendedor = new Vendedor();
                break;
        }
    }
    
    public void cadastroPessoaPF(ClientePF cpf){
        
    }
}