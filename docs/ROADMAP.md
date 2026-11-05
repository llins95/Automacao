# Roteiro de desenvolvimento

## Etapa 1 — Fundação
- [x] Criar repositório e identidade Automacao.
- [x] Definir estrutura inicial e catálogo dos seis aplicativos do script CAPRI.
- [ ] Criar interface WPF com menu lateral e tema Fluent.
- [ ] Criar serviço central de logs e tratamento de erros.

## Etapa 2 — Instalação de softwares
- [ ] Detectar WinGet e aplicativos já instalados.
- [ ] Instalar/atualizar em segundo plano, com progresso e logs.
- [ ] Permitir seleção individual e seleção em lote.
- [ ] Criar instalador local assistido para Office 2013 e 2016.

## Etapa 3 — Diagnóstico
- [ ] Relatório de hardware e sistema operacional.
- [ ] Espaço em disco, memória e informações SMART quando suportadas.
- [ ] Executar SFC e DISM com progresso, logs e relatório.
- [ ] Consultar estado de ativação do Windows e Office por ferramentas oficiais.

## Etapa 4 — Backup
- [ ] Detectar perfis locais e permitir selecionar usuários.
- [ ] Selecionar destino e validar espaço livre.
- [ ] Copiar pastas conhecidas, dados de navegador e diretórios personalizados.
- [ ] Copiar DriverStore separadamente.
- [ ] Evitar recursão para dentro do próprio destino.
- [ ] Validar arquivos/tamanhos e gerar relatório de falhas e itens ignorados.

## Etapa 5 — Otimização segura
- [ ] Perfis Padrão, Gamer, Corporativo e Extremo.
- [ ] Classificar risco e impacto de cada ajuste.
- [ ] Criar ponto de restauração quando disponível.
- [ ] Registrar estado anterior e implementar reversão.
- [ ] Preservar domínio, políticas corporativas, impressoras e segurança.

## Etapa 6 — Qualidade e distribuição
- [ ] Testar em Windows 10 e 11 x64.
- [ ] Validar em máquina virtual antes de recomendar uso real.
- [ ] Criar pacote de distribuição e documentação.
- [ ] Revisar permissões, logs e proteção de dados.
