# PROJETO DE TCC: VISUALIZADOR DE NOTAS FISCAIS XML  

## 1. INTRODUÇÃO  
No contexto empresarial, a gestão de notas fiscais eletrônicas (NFe e NFCe) é uma atividade essencial para comerciantes e contadores, garantindo a regularidade fiscal e evitando sanções legais. Contudo, o grande volume de notas emitidas diariamente, bem como a complexidade dos arquivos XML, tornam o processo de organização, validação e consulta desses documentos desafiador e sujeito a erros.  

Diante dessa realidade, este projeto apresenta o **Visualizador de Notas Fiscais XML**, uma aplicação multiplataforma desenvolvida com **Flutter**, que visa otimizar a gestão de notas fiscais, utilizando armazenamento local e em nuvem, filtros avançados e autenticação segura.  

---

## 2. OBJETIVOS  

### 2.1 Objetivo Geral  
Desenvolver uma aplicação multiplataforma para visualização, organização e validação de notas fiscais eletrônicas, proporcionando praticidade e eficiência no cumprimento de obrigações fiscais.  

### 2.2 Objetivos Específicos  
- Permitir a importação, armazenamento e leitura de arquivos XML de NFe e NFCe.  
- Implementar autenticação via Google para maior segurança e personalização.  
- Proporcionar armazenamento em nuvem por meio do Firebase, garantindo acessibilidade aos dados.  
- Implementar responsividade na interface para suportar diferentes dispositivos.  
- Oferecer funcionalidades avançadas de busca e filtragem diretamente na tabela de dados.  

---

## 3. JUSTIFICATIVA  
A gestão fiscal é uma obrigação indispensável para empresas, e erros no controle de notas fiscais podem acarretar multas, auditorias fiscais e impactos financeiros negativos. Atualmente, muitos comerciantes ainda realizam a gestão de notas de forma manual ou com ferramentas genéricas, que não atendem às especificidades do processo.  

O **Visualizador de Notas Fiscais XML** atende a essa lacuna ao oferecer uma solução tecnológica acessível, segura e eficiente, que facilita tanto o trabalho do comerciante quanto do contador, reduzindo o risco de erros e promovendo a conformidade fiscal.  

---

## 4. METODOLOGIA  

### 4.1 Ferramentas Utilizadas  
- **Flutter**: Framework para desenvolvimento de aplicações multiplataforma.  
- **Dart**: Linguagem de programação utilizada para lógica de negócios e manipulação de dados.  
- **GetX**: Biblioteca para gerenciamento de estado, navegação e injeção de dependência.  
- **Firebase**: Serviço para armazenamento em nuvem, autenticação e sincronização de dados.  

### 4.2 Desenvolvimento  
O projeto seguiu uma abordagem incremental, com o desenvolvimento de funcionalidades em etapas, conforme descrito abaixo:  
1. Implementação básica de importação e leitura de arquivos XML.  
2. Adição de verificação automática de lacunas na sequência numérica das notas.  
3. Desenvolvimento de funcionalidades para validação do status das notas fiscais.  
4. Implementação do cálculo automático do valor total das notas.  
5. Inclusão de login via Google e integração com Firebase para armazenamento em nuvem.  
6. Adaptação da interface para responsividade e implementação de filtros avançados na tabela.  

---

## 5. ARQUITETURA DO SISTEMA  

### 5.1 Frontend  
- **Flutter**: Responsável por fornecer uma interface de usuário consistente e responsiva.  
- **Dart**: Linguagem de programação para estruturação da lógica de negócio e manipulação de dados.  
- **GetX**: Facilita o gerenciamento de estado e navegação, promovendo uma experiência otimizada.  

### 5.2 Backend e Armazenamento  
- **Firebase**: Utilizado para armazenamento de dados na nuvem, autenticação e sincronização.  
- **Banco de Dados Local**: Garante suporte offline, permitindo que a aplicação funcione mesmo sem conexão.  

---

## 6. FUNCIONALIDADES  

### 6.1 Importação e Armazenamento de XMLs  
- Suporte à importação de arquivos XML de NFe e NFCe.  
- Armazenamento local e na nuvem para maior segurança e disponibilidade.  

### 6.2 Login via Google  
- Autenticação segura e personalizada.  
- Dados do usuário armazenados separadamente para garantir privacidade.  

### 6.3 Verificação de Números Faltantes  
- Identificação automática de lacunas na sequência numérica das notas fiscais.  
- Notificação visual para facilitar a correção de inconsistências.  

### 6.4 Validação de Status das Notas  
- Classificação das notas fiscais como autorizadas, canceladas, inutilizadas ou incorretas.  
- Relatórios detalhados para auditoria fiscal.  

### 6.5 Cálculo do Valor Total  
- Cálculo automático do valor total das notas fiscais importadas.  
- Exibição clara do total na interface principal.  

### 6.6 Pesquisa e Filtros na Tabela  
- Busca avançada por intervalo de datas e palavras-chave.  
- Filtros para categorias específicas diretamente na tabela.  

---

## 7. RESULTADOS  
O **Visualizador de Notas Fiscais XML** foi desenvolvido com sucesso, atendendo aos objetivos propostos. Os principais resultados obtidos incluem:  
- Melhoria na eficiência da gestão de notas fiscais.  
- Redução de erros humanos na organização e validação de documentos fiscais.  
- Maior segurança e acessibilidade dos dados por meio do armazenamento em nuvem.  
- Facilidade de uso com autenticação segura e interface responsiva.  

---

## 8 COMO TESTAR
- Acesse a Aplicação Web:
Abra o link: (https://rafaelcordeirom.github.io/TCC-website-Final) no navegador de sua preferência.

- Importe os Arquivos XML:
Faça o download dos arquivos de exemplo disponíveis no repositório do projeto no GitHub. Em seguida, importe-os na aplicação por meio do botão "Arquivo".

---

## 9. CONCLUSÃO  
Este projeto apresentou uma solução tecnológica prática e acessível para a gestão de notas fiscais eletrônicas. Ao combinar armazenamento local e na nuvem, autenticação segura e funcionalidades avançadas de busca e filtragem, a aplicação atende a necessidades reais do mercado.  

O **Visualizador de Notas Fiscais XML** não apenas facilita o trabalho do comerciante e contador, mas também promove a conformidade fiscal, reduzindo o risco de penalidades e proporcionando maior tranquilidade no cumprimento das obrigações legais.  

---

## 10. Links  
- Video inicial (antes das melhorias): ([https://www.youtube.com/watch?v=LfWOiJWcjzg](https://www.youtube.com/watch?v=LfWOiJWcjzg))
- Video final (depois das melhorias): ([https://www.youtube.com/watch?v=IPBQdnU2S8U](https://www.youtube.com/watch?v=IPBQdnU2S8U))
- Site em funcionamento:  ([https://rafaelcordeirom.github.io/TCC-website-Final](https://rafaelcordeirom.github.io/TCC-website-Final))
---

## 11. REFERÊNCIAS  
- Documentação oficial do Flutter e Dart ([https://flutter.dev/](https://flutter.dev/)).  
- Documentação oficial do Firebase ([https://firebase.google.com/](https://firebase.google.com/)).  
- Normas da Receita Federal para emissão de notas fiscais eletrônicas ([https://www.gov.br/receitafederal/](https://www.gov.br/receitafederal/)).  
