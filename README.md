# Automacao

Aplicativo de manutenção, diagnóstico, instalação de softwares e backup para Windows 10 e Windows 11 (64 bits).

> **Status:** estrutura inicial do projeto. Os módulos estão sendo implementados por etapas; não utilize esta versão para operações de manutenção ou backup em ambiente de produção.

## Objetivos

- Interface gráfica WPF em português brasileiro, com identidade visual inspirada no Microsoft Fluent Design.
- Instalação e atualização de aplicativos por WinGet, com detecção prévia e registro de resultados.
- Instalação assistida do Microsoft Office 2013/2016 a partir de mídias locais completas e legítimas.
- Relatórios de hardware, diagnóstico e saúde do Windows.
- Backup selecionável de perfis de usuário, pastas conhecidas e diretórios personalizados, com Robocopy, validação e logs.
- Otimizações organizadas por perfil, com confirmação, registro das alterações e possibilidade de reversão.
- Diagnóstico do estado de ativação do Windows e do Office, sem mecanismos de bypass de licenciamento.

## Requisitos previstos

- Windows 10 ou Windows 11, 64 bits.
- Windows PowerShell 5.1 ou superior.
- WinGet para instalação de aplicativos.
- Execução como administrador apenas nas funções que realmente exigirem elevação.

## Estrutura

```text
Automacao/
├── Automacao.ps1
├── Automacao.bat
├── README.md
├── LICENSE
├── Config/
│   ├── Apps.json
│   └── Tweaks.json
├── src/
│   ├── Core/
│   └── UI/
├── Instaladores/
│   └── Office/
│       ├── Office2013/
│       └── Office2016/
├── Logs/
├── Reports/
├── Backups/
├── tests/
└── docs/
```

As pastas de instaladores, logs, relatórios e backups são locais de trabalho. Não envie mídias proprietárias do Office, dados pessoais, backups, credenciais ou chaves de licença para este repositório público.

## Aplicativos do catálogo inicial

- WinRAR
- Eclipse Temurin 8 JRE x64
- Mozilla Firefox
- Adobe Acrobat Reader
- AnyDesk
- Google Chrome

A lista e os identificadores WinGet ficam em `Config/Apps.json`.

## Office

Coloque a mídia completa e licenciada em `Instaladores/Office/Office2013/` e/ou `Instaladores/Office/Office2016/`. Cada diretório deve conter o `setup.exe` e os demais arquivos originais da mídia. Os instaladores não são distribuídos neste repositório.

## Segurança

- Nenhuma senha, token, chave privada ou dado pessoal deve ser versionado.
- A ativação será somente de diagnóstico e orientação para métodos oficiais.
- Ajustes de sistema deverão ter descrição, nível de risco, confirmação e registro.
- Backups devem validar destino, espaço disponível e exclusão da própria pasta de backup.

## Desenvolvimento

Consulte `docs/ROADMAP.md` para a sequência de implementação. Até que os testes sejam concluídos, revise os scripts antes de executá-los e mantenha cópias de segurança independentes.
