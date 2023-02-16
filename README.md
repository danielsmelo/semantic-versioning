# Gerenciamento de Versão de Software com SemVer

Este repositório contém dois scripts responsáveis por gerenciar a versão de software de acordo com a especificação de versionamento SemVer (Semantic Versioning).

O primeiro script é um pre commit, que é executado antes de um commit ser realizado. Esse script lê a versão anterior do arquivo VERSION e a operação (major, minor ou patch) que deve ser realizada para atualizar a versão de acordo com a mudança feita. Em seguida, o script chama o segundo script, semver.sh, para calcular a próxima versão de acordo com a operação especificada. A nova versão é impressa e escrita no arquivo VERSION, seguida pela letra 'p', que indica que a versão foi atualizada pelo pre commit. O arquivo VERSION é adicionado ao índice do Git para ser commitado.

O segundo script, semver.sh, incrementa uma string de versão usando a terminologia SemVer. Ele recebe a string de versão como argumento no formato "major.minor.patch" e uma opção (-M para incrementar a versão major, -m para incrementar a versão minor e -p para incrementar a versão patch). O script então usa expressões regulares para separar os elementos da versão em um array associativo. Em seguida, ele incrementa a versão de acordo com a opção fornecida e imprime a nova string de versão no formato "major.minor.patch".

# Referências
[Customizing Git - Git Hooks](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks)
[SemVer.org](https://semver.org/lang/pt-BR/)
