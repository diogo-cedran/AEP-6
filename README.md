# aep6

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

json-server --watch db.json --port 49060

# NetGuard - Documentação

## Visão Geral
O NetGuard é uma aplicação moderna e segura desenvolvida para monitorar redes domésticas. Ele fornece informações em tempo real sobre dispositivos conectados e comportamento de tráfego, ajudando a identificar possíveis ameaças e a proteger sua rede.

## Manutenções Realizadas
### Manutenção Corretiva
A manutenção corretiva cobre a correção de falhas identificadas, como erros de compilação, falhas de conexão ou problemas na interface de usuário:

Exemplo: Corrigido o problema de "Connection refused" ao acessar servidores locais.
### Manutenção Adaptativa
Modificações para garantir compatibilidade com novos ambientes ou tecnologias:

Exemplo: Atualização do framework Flutter para manter a compatibilidade com novas versões de sistemas operacionais.
### Manutenção Perfectiva
Melhorias para aumentar a funcionalidade e a performance:

Exemplo: Redesign da interface com layout moderno e otimização de código.
### Manutenção Preditiva
Prevenção de problemas futuros e melhorias baseadas em análises:

Exemplo: Implementação de monitoramento de desempenho para prever e mitigar lentidão antes de impactar os usuários.

## Análise e Escolha de Paradigmas de Programação

### Paradigma Imperativo
Utilizado no Flutter para controle explícito do fluxo da aplicação.
### Paradigma Funcional
Aplicado em manipulação de dados imutáveis e funções puras.
### Paradigma Orientado a Objetos
Organiza e estrutura o código para modularidade e reutilização.
Plano de Gerenciamento de Configuração
Políticas de Versionamento
Modelo de Versionamento: Seguimos o padrão SemVer:
MAJOR.MINOR.PATCH
Comandos para Versionamento:


# Exemplo: Criar uma nova tag para uma versão específica
```
git tag -a v1.0.0 -m "Release v1.0.0"
git push origin v1.0.0
``` 
Controle de Mudanças
Requisições de Mudança: Abertura de Issues no GitHub.
Revisões de Código: Código revisado por outro membro antes de ser mesclado.
Fluxo de Trabalho Git:


# Clonar o repositório
```
git clone https://github.com/seu-usuario/netguard.git
```

# Criar uma nova branch para uma feature
```
git checkout -b feature/nova-funcionalidade
```

# Adicionar mudanças e fazer commit
```
git add .
git commit -m "Implementa nova funcionalidade"
```
# Enviar a branch para o repositório remoto
```
git push origin feature/nova-funcionalidade
```
# Fazer o merge da branch feature na branch dev
```
git checkout dev
git merge feature/nova-funcionalidade
```
Identificação de Itens de Configuração
Itens de Configuração: Código fonte, dependências e documentação.
Comandos para Gerenciar Itens de Configuração:


# Atualizar dependências
```
flutter pub get
```
# Limpar o cache do projeto
```
flutter clean
```
# Rodar o aplicativo
```
flutter run
```
Comandos Úteis
Configuração do Projeto


# Instalar dependências
```
flutter pub get
```
# Limpar o projeto
```
flutter clean
```
# Rodar o aplicativo
```
flutter run
```
Versionamento e Controle de Mudanças


# Criar uma nova branch
```
git checkout -b minha-branch
```
# Fazer commit das mudanças
```
git add .
git commit -m "Descrição das mudanças"
```
# Enviar para o repositório remoto
```
git push origin minha-branch
```
Gerenciamento de Releases


# Criar e enviar uma nova tag de versão
```
git tag -a v1.2.0 -m "Release v1.2.0"
git push origin v1.2.0
```
### Contribuições
Sinta-se à vontade para abrir Issues ou Pull Requests para reportar problemas ou sugerir melhorias. Juntos, podemos tornar o NetGuard ainda melhor!