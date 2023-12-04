# DAO-Publica
Desafio 3

# Contrato Inteligente para DAO Pública

Este repositório contém contratos inteligentes desenvolvidos para a proposta de uma DAO Pública. O objetivo é criar uma DAO na qual cidadãos, prefeituras, governos estaduais e federal possam participar ativamente, doando títulos públicos para financiar projetos específicos em diversas áreas, como educação, meio ambiente, segurança e saúde. A validação do cidadão é realizada através do título de eleitor.

## Visão Geral da Proposta

### Quem
- **Prefeituras**
- **Governos Estaduais e Federal**
- **Cidadãos**

### Para
- **Combater a falta de engajamento dos eleitores e moradores da cidade.**
- **Transferir recursos para problemas pontuais dos Municípios.**

### Como
- **Criação de uma DAO onde moradores da cidade que fizerem doações utilizando títulos públicos poderão escolher para quais áreas os recursos serão direcionados.**
- **Opção para o governo liberar linhas de crédito para os moradores decidirem onde aplicar.**
- **Validação do município através do título de eleitor.**

### Diferencial
- **Participação direta e transparente do cidadão na alocação de recursos para áreas específicas.**

## Arquitetura do Contrato Inteligente

### Contrato DAO
- **Funcionalidades:**
  - Criação e execução de projetos financiados pela DAO.
  - Votação dos eleitores para decidir sobre projetos.
  - Registro de eleitores validados através do título de eleitor.
  - Verificação de autoridade para modificar o contrato.

### Contrato TitleRegistry
- **Funcionalidades:**
  - Registro de eleitores validados pela autoridade.

## Como Funciona

1. **Registro de Eleitores:**
   - A autoridade registra eleitores validados através do título de eleitor no contrato TitleRegistry.

2. **Criação de Projetos:**
   - Prefeituras podem criar projetos na DAO, indicando o beneficiário e a quantidade de recursos necessários.

3. **Votação dos Eleitores:**
   - Eleitores votam nos projetos de sua escolha, utilizando tokens vinculados aos títulos públicos doados.

4. **Execução de Projetos:**
   - Projetos são executados se receberem votos suficientes (mais de 25% do total de tokens).
   - O beneficiário recebe os recursos para implementar o projeto.

5. **Transparência e Participação:**
   - A DAO proporciona transparência e participação direta dos cidadãos na alocação de recursos para áreas específicas.

## Uso

1. **Deploy dos Contratos:**
   - Implante os contratos DAO e TitleRegistry.
   - Configure as permissões adequadas para garantir a segurança do sistema.

2. **Registro de Eleitores:**
   - A autoridade utiliza o contrato TitleRegistry para registrar eleitores validados pelo título de eleitor.

3. **Criação de Projetos:**
   - PRefeituras utilizam o contrato DAO para criar projetos, indicando beneficiário e recursos necessários.

4. **Votação dos Eleitores:**
   - Eleitores votam em projetos de sua escolha, utilizando tokens vinculados aos títulos públicos doados.

5. **Execução de Projetos:**
   - Projetos são executados se receberem votos suficientes (mais de 25% do total de tokens).
   - Beneficiários recebem recursos para implementar os projetos.


