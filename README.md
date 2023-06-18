# Azure VM com Nginx

Este projeto é responsável por criar uma máquina virtual no Azure e instalar o servidor web Nginx, tornando-o acessível no host da máquina na porta 80.

## Pré-requisitos

Antes de começar, você precisa ter as seguintes ferramentas instaladas e configuradas em sua máquina:

- [Terraform](https://www.terraform.io/downloads.html)
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)

## Configuração

Siga as etapas abaixo para configurar e executar o projeto:

1. Faça o clone deste repositório para o seu ambiente local.
2. No terminal, navegue até o diretório raiz do projeto.

### Configurando suas credenciais do Azure

Faça login na sua conta do Azure usando o Azure CLI:

```bash
az login
```

Siga as instruções fornecidas pelo Azure CLI para autenticar-se.

## Executando o Terraform

De volta ao terminal, execute o seguinte comando para inicializar o Terraform:

```bash
terraform init
```

Em seguida, execute o comando abaixo para visualizar as alterações que serão feitas no ambiente:

```bash
terraform plan
```

Neste momento, você precisará fornecer uma senha para a máquina virtual. Após essa etapa, revise o plano de execução e, caso esteja de acordo, execute o comando a seguir para criar a máquina virtual no Azure:

```bash
terraform apply
```

Durante o processo, você será solicitado a digitar a senha novamente e após isso confirmar a criação dos recursos. Digite `yes` e pressione Enter. 

## Acesso ao servidor web

Após a conclusão do provisionamento, você poderá acessar o servidor web Nginx no host da máquina na porta 80. Basta clicar no IP público da máquina virtual na saída final do prompt.

## Encerrando os recursos

Após testar o servidor web, você pode remover os recursos provisionados para evitar custos adicionais. Para fazer isso, execute o seguinte comando:

```bash
terraform destroy -auto-approve
```

Novamente, você será solicitado a confirmar a senha e a exclusão dos recursos. Digite `yes` e pressione Enter.

## Contribuindo

Sinta-se à vontade para contribuir com melhorias para este projeto. Basta abrir uma pull request neste repositório.

## Licença

Este projeto está licenciado sob a MIT License.
