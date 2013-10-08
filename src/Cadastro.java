import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JFrame;
import java.util.Scanner;

/**
 *
 * @author morvana
 */
class Cadastro {

       public void getAnswerUser() {

            Scanner in = new Scanner(System.in);
            System.out.println("1- CPF");
            System.out.println("2- CNPJ");
            System.out.println("3- Cód. Vendedor");
            System.out.println("Digite o código desejado:");
            int resposta = in.nextInt(); 
                if((resposta > 3) || (resposta < 1)) {
                    System.out.println("Valor inválido");
                    System.out.println("Digite um valor válido");
                } else {
                    this.getClassOfType(resposta);
                }
       }
       
        private void getClassOfType(int resposta) {
            
            switch (resposta) {
                case 1:
                   ClientePF cpf = new ClientePF();
                   cadastroCPF(cpf);
                break;
                case 2:
                    ClientePJ cnpj = new ClientePJ();
                break;
                case 3:
                    Vendedor vendedor = new Vendedor();
                break;
            }
        }
        
        public void cadastroCPF(ClientePF cpf) {
            
            System.out.println("Digite seu CPF:");

        }
}