# Computação Quântica Topológica e Q#

Este repositório demonstra conceitos de computação quântica topológica utilizando a linguagem Q# e o Azure Quantum Development Kit (QDK).

## Pré-requisitos

Para executar os exemplos neste repositório, você precisa ter o Azure Quantum Development Kit (QDK) instalado. O QDK fornece as ferramentas e bibliotecas necessárias para desenvolver e simular algoritmos quânticos em Q#.

### Como instalar o Azure Quantum Development Kit (QDK)

A maneira mais fácil de instalar o QDK é através das extensões do Visual Studio Code ou usando o .NET SDK.

#### 1. Usando o Visual Studio Code:

1.  Abra o Visual Studio Code.
2.  Navegue até o painel de extensões (Ctrl+Shift+X ou Cmd+Shift+X).
3.  Pesquise por "Azure Quantum Development Kit".
4.  Clique em "Instalar".

Esta extensão instalará o QDK e fornecerá suporte para a linguagem Q#, incluindo realce de sintaxe, depuração e outras funcionalidades.

#### 2. Usando o .NET SDK (para desenvolvimento mais avançado):

Você pode instalar o QDK usando o .NET SDK. Siga os passos abaixo:

1.  **Instalar o .NET SDK:** Se você ainda não tem o .NET SDK instalado, baixe-o e instale-o a partir do site oficial da Microsoft: [https://dotnet.microsoft.com/download](https://dotnet.microsoft.com/download)
2.  **Instalar os templates do Q#:** Abra o terminal ou prompt de comando e execute o seguinte comando:

```bash
dotnet new install Microsoft.Quantum.ProjectTemplates