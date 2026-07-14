# 🍏 Guia Definitivo: Instalando o Harbour no macOS

O processo no Mac é via terminal! Não precisamos baixar instaladores `.exe` nem configurar Variáveis de Ambiente manualmente. O terminal faz todo o trabalho duro para a gente.

---

### ⚙️ Passo 0: As Ferramentas da Apple (Obrigatório)
O Harbour precisa de um compilador C por trás dos panos para gerar o executável final. Se o seu Mac for "novo" para programação, ele não tem isso. 
Abra o terminal e rode o comando abaixo. Uma janela vai aparecer pedindo para instalar as "Command Line Tools". Clique em **Instalar** e aguarde (pode demorar alguns minutos).
`xcode-select --install`
*(Se o terminal avisar que já está instalado, ótimo, pule para o próximo passo).*

---

### 🛠️ Passo 1: Homebrew (Gerenciador de Pacotes)
O Homebrew é o que vai nos permitir instalar programas direto pelo terminal. Rode:
`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

---

### 🟦 Passo 2: Instalar o VSCode
Caso ainda não tenha o editor de código, instale direto pelo terminal:
`brew install --cask visual-studio-code`

---

### 🚢 Passo 3: Instalar o Harbour (Versão 3.0.0)
A mágica acontece aqui. O curso exige a versão **3.0.0** por estabilidade. O comando padrão do Homebrew já baixa essa versão oficial. No seu terminal, rode apenas:
`brew install harbour`

> 💡 **Aviso:** O terminal pode exibir alguns "warnings" em amarelo avisando que certas dependências são antigas. **Apenas ignore**. O Harbour vai funcionar perfeitamente.

Para confirmar se deu tudo certo e se a versão está correta, digite `harbour --version`. Você deve ver algo como `Harbour 3.0.0` na tela!

---

### 🧩 Passo 4: Extensão no VSCode
1. Abra o VSCode e acesse a aba de Extensões.
2. Pesquise por **Harbour and xHarbour** (do autor *Antonino Perricone*).
3. Clique em **Install** para habilitar as cores e a sintaxe no seu código.

---

### 🚨 Passo 5: Acentuação no Mac e Regras de Variáveis
O Windows usa um padrão antigo de caracteres no terminal, enquanto o Mac usa o padrão global atual (UTF-8). Para que suas mensagens com acento não fiquem corrompidas (ex: `ol├í`), você precisa **sempre** avisar o Harbour para trabalhar em UTF-8.

Além disso, **atenção à regra de ouro do Harbour:** a declaração de variáveis (`LOCAL`) deve vir sempre **antes** de qualquer outro comando de execução. 

Crie um arquivo `teste00.prg` (garanta no canto inferior direito do VSCode que ele está salvo em **UTF-8**) e use esta estrutura como base para seus exercícios:

```harbour
// Importa o pacote UTF-8 para o executável
REQUEST HB_CODEPAGE_UTF8

FUNCTION Main()
    // 1. PRIMEIRO: Declarar todas as variáveis
    LOCAL cAviso := "Ambiente macOS funcionando perfeitamente!"
    LOCAL cNome  := "Seu Nome Aqui"

    // 2. DEPOIS: Comandos de execução
    hb_cdpSelect( "UTF8" ) // Força o terminal a ler os acentos do Mac

    QOut(cAviso)
    QOut("Nome: " + cNome)
    QOut("Testando acentuação: áéíóú ç")
    
RETURN NIL