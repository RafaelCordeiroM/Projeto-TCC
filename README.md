
# Visualizador de Notas Fiscais XML

## Resumo do Projeto
Esta aplicação, desenvolvida com **Flutter**, oferece uma plataforma para visualização e gestão de notas fiscais eletrônicas (NFe e NFCe) por meio de arquivos XML. A aplicação é multiplataforma, disponível para dispositivos móveis e desktops, com banco de dados local para armazenar e processar os dados das notas.

## Objetivo da Aplicação
A gestão de notas fiscais eletrônicas é essencial para comerciantes e contadores, garantindo regularidade fiscal e evitando multas. Devido ao volume e à complexidade dos arquivos XML, o processo de organização manual pode ser demorado e sujeito a erros.

A aplicação foi desenvolvida para facilitar essa gestão, oferecendo uma ferramenta prática e acessível para visualizar, organizar e validar notas fiscais de forma rápida e segura. As principais funcionalidades incluem:
- Importação de XMLs
- Validação de status das notas
- Identificação de lacunas na sequência numérica
- Pesquisa e filtro de notas fiscais

A ferramenta visa a otimizar o trabalho de comerciantes e contadores, reduzindo o risco de multas e garantindo conformidade com as regulamentações fiscais, além de proporcionar uma visão geral das operações financeiras.

---

## Arquitetura do Sistema

### Frontend
- **Flutter**: Framework para construção de interfaces e experiência multiplataforma.
- **Dart**: Linguagem de programação para lógica de negócio.
- **GetX**: Biblioteca para gerenciamento de estado, navegação e injeção de dependência, melhorando a estrutura e o desempenho da aplicação.

### Backend Local
- **Banco de Dados Local**: Armazena e organiza as notas fiscais, oferecendo disponibilidade offline e alto desempenho nas buscas e filtragens.

---

## Funcionalidades Principais

### Importação e Leitura de XMLs
- Permite a importação de arquivos XML de NFe e NFCe.
- Processamento dos arquivos para extrair dados como número, valor, data e status da nota.

### Verificação de Números Faltantes
- Análise da sequência numérica das notas fiscais.
- Identificação e notificação de lacunas na sequência para correção de possíveis erros.

### Validação de Status das Notas
- Verificação do status das notas (autorizada, cancelada, inutilizada, incorreta).
- Relatório detalhado para gestão precisa.

### Cálculo do Valor Total
- Calcula o valor total das notas fiscais importadas.
- Exibição prática do valor total na interface, facilitando a contabilidade.

### Campo de Pesquisa e Filtros Avançados
- Pesquisa por intervalo de datas e palavras-chave.
- Filtros disponíveis: Autorizadas, Canceladas, Inutilizadas, Incorretas, NF-e (Modelo 55), NFC-e (Modelo 65).

---

## Interface do Usuário

### Tela Inicial
- **Botão “Importar XMLs”**: Facilita o upload dos arquivos XML.
- **Resumo das Notas Fiscais**: Exibe um resumo dos arquivos importados e o valor total calculado.

### Aba de Validação de Status
- **Relatório de Status**: Status de cada nota fiscal categorizado.
- **Notificação de Números Faltantes**: Alertas para notas faltantes na sequência.

### Barra Lateral
- **Campo de Pesquisa**: Pesquisa rápida por intervalo de datas ou texto.
- **Filtros**: Permite selecionar filtros específicos para visualizar categorias de notas fiscais.

---

## Fluxo de Operação

1. **Importação de Arquivos XML**: Clique em "Importar XMLs" e selecione arquivos XML de NFe ou NFCe.
2. **Verificação Automática de Números Faltantes**: Análise automática da sequência numérica e notificação de números ausentes.
3. **Validação de Status**: Classificação das notas fiscais em correta, inutilizada, cancelada ou autorizada.
4. **Cálculo do Valor Total**: Exibição do valor total das notas fiscais na interface.
5. **Pesquisa e Filtros**: Pesquisa por datas ou palavras-chave e visualização por filtros específicos.

---

## Tecnologias Utilizadas

- **Flutter**: Framework de desenvolvimento de interfaces e experiência de usuário.
- **Dart**: Linguagem para lógica de negócios e manipulação de dados.
- **GetX**: Biblioteca para gerenciamento de estado, navegação e injeção de dependência.

---

## Possíveis Extensões

- **Integração com API de Notas Fiscais**: Possível expansão para importação direta de serviços de terceiros.
- **Exportação de Relatórios**: Exportação dos relatórios de validação e resumo em formatos como PDF ou CSV.
- **Sincronização em Nuvem**: Sincronização para armazenamento e consulta de dados na nuvem, permitindo acessibilidade em múltiplos dispositivos.

---

## Conclusão
Este projeto visa oferecer uma solução completa para a gestão de notas fiscais eletrônicas, otimizando processos contábeis e de auditoria, e proporcionando mais confiabilidade e tranquilidade no cumprimento de obrigações fiscais.
