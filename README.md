📄 Script – Reparação Completa do Windows (DISM + SFC)
📚 Enquadramento
O objetivo deste script é automatizar o processo de verificação e reparação da imagem do Windows, utilizando as ferramentas nativas DISM e SFC.
Este procedimento contribui para a estabilidade do sistema, correção de ficheiros corrompidos e melhoria do desempenho geral.
________________________________________
⚙️ Descrição do Funcionamento
🔹 Elevação de Privilégios
•	Verifica se o script está a ser executado com permissões de administrador
•	Caso contrário, solicita elevação automática via UAC
•	Garante acesso às funções avançadas do DISM e SFC
________________________________________
🔹 Verificação da Integridade da Imagem do Windows
DISM /CheckHealth
•	Verifica se existe corrupção previamente registada
•	Processo rápido e não intrusivo
DISM /ScanHealth
•	Realiza uma análise profunda da imagem do sistema
•	Pode demorar vários minutos
•	Identifica corrupção ou inconsistências internas
________________________________________
🔹 Reparação da Imagem do Sistema
DISM /RestoreHealth
•	Repara automaticamente ficheiros corrompidos
•	Utiliza o Windows Update como fonte de reparação
________________________________________
🔹 Verificação e Reparação de Ficheiros do Sistema
SFC /scannow
•	Analisa todos os ficheiros protegidos do Windows
•	Substitui ficheiros danificados por versões corretas
•	Complementa o processo iniciado pelo DISM
________________________________________
🎯 Objetivo do Script
•	Automatizar tarefas de manutenção avançada do Windows
•	Corrigir ficheiros corrompidos e problemas de integridade
•	Melhorar a estabilidade e desempenho do sistema
•	Aplicar boas práticas de administração de sistemas
________________________________________
🛠️ Tecnologias Utilizadas
•	Batch scripting (Windows CMD)
•	Ferramentas nativas: DISM e SFC
•	Controlo de permissões (UAC)
•	Variáveis de ambiente do Windows
________________________________________
⚠️ Notas Importantes
•	O script deve ser executado como Administrador
•	O processo pode demorar vários minutos
•	Recomenda-se fechar aplicações antes da execução
•	Reiniciar o sistema após a reparação pode ser necessário
________________________________________
🚀 Nota Final
Este script demonstra a importância da automação na administração de sistemas, permitindo executar tarefas críticas de forma rápida, eficiente e segura.
É uma ferramenta essencial para técnicos, administradores e estudantes que pretendem manter sistemas Windows estáveis e funcionais.


