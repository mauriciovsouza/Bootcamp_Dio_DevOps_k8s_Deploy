# Projeto para Deploy de Aplicação Completa com Kubernetes

Este projeto realiza o deploy de uma aplicação completa com frontend, backend e banco de dados MySQL utilizando Kubernetes.

A aplicação é composta por containers Docker que são orquestrados por meio de serviços e deployments definidos nos arquivos de configuração Kubernetes.

## Estrutura do projeto

- **frontend/**  
  Contém os arquivos da aplicação frontend, que roda isolada, simulando um aplicativo mobile. Arquivos principais:  
  - `css.css`  
  - `index.html`  
  - `js.js`  

- **backend/**  
  Contém os arquivos PHP do backend:  
  - `conexao.php`  
  - `index.php`

- Arquivos na raiz do projeto:  
  - `deployment.yml` — define os deployments e PersistentVolumeClaim para o MySQL  
  - `services.yml` — define os serviços Kubernetes para frontend, backend e banco

- `script.sh` — script para automatizar o build das imagens Docker, push para o repositório e deploy no cluster Kubernetes.

## Como usar

Basta executar o script de deploy:

```bash
./script.sh
   ```
Projeto criado como parte do aprendizado no Bootcamp DIO – **DevOps Deploy com K8s**.
