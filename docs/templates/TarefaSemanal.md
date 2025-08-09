# 📝 Template: Tarefa Semanal

> Modelo padrão para documentar tarefas da equipe LivrosLuminus

```markdown
## [TAREFA] - [Nome simples e claro]

**Por que fazer?** [Valor específico para criança/cuidador]
**Pronto quando:** [Critério específico e testável]
**Pontos:** [1-5] **Tempo:** [Xh] **Responsável:** [Mariana/Nicole/Ambas]

### 📋 Checklist:
- [ ] [Passo específico] - [Responsável] - [Xtempo]
- [ ] [Passo específico] - [Responsável] - [Xtempo]
- [ ] [Teste/validação] - [Ambas] - [30min]

### 🎨 Nicole precisa entregar:
- [ ] [Asset específico] - [Até quando]
- [ ] [Mockup/wireframe] - [Até quando]

### ⚠️ Dependências:
- [ ] [Tarefa X] precisa estar pronta antes
- [ ] [Asset Y] precisa estar disponível

### ✅ Critérios de Aceite:
- [ ] [Comportamento específico]
- [ ] [Funcionalidade específica]
- [ ] [Teste com usuário específico]
```

## 💡 Dicas de Preenchimento

### "Por que fazer?"
- Foque no valor para usuário final
- ❌ "Melhorar a tela inicial"
- ✅ "Criança encontra livro favorito mais facilmente"

### "Pronto quando"
- Seja específico e testável
- ❌ "Botão funciona bem"  
- ✅ "Criança consegue pausar áudio com 1 toque"

### Pontos (Story Points)
- 1 = Já fiz algo parecido, é simples
- 3 = Sei fazer, vai demorar um pouco
- 5 = Complexo, mas factível
- 8+ = Muito complexo (quebrar em tarefas menores)

### Checklist
- Cada item deve ser completável em 1-2h
- Especificar responsável claramente
- Incluir sempre teste/validação

---

## 📖 Exemplos Práticos

### Exemplo 1: Funcionalidade Simples
```markdown
## TAREFA - Adicionar botão de favorito

**Por que fazer?** Criança pode marcar livros que mais gosta para encontrar depois
**Pronto quando:** Criança toca no coração e livro aparece na tela de favoritos
**Pontos:** 3 **Tempo:** 4h **Responsável:** Mariana

### 📋 Checklist:
- [ ] Adicionar ícone de coração nas capas - Mariana - 1h
- [ ] Implementar lógica de salvar favorito - Mariana - 2h
- [ ] Criar tela de favoritos - Mariana - 1h
- [ ] Testar fluxo completo - Ambas - 30min

### 🎨 Nicole precisa entregar:
- [ ] Ícone de coração (vazio e preenchido) - Até terça

### ✅ Critérios de Aceite:
- [ ] Coração muda cor quando tocado
- [ ] Livro aparece na lista de favoritos
- [ ] Favorito persiste entre sessões
```

### Exemplo 2: Melhoria Visual
```markdown
## TAREFA - Melhorar navegação entre páginas

**Por que fazer?** Criança se confunde com botões atuais para virar página
**Pronto quando:** Criança navega entre páginas sem ajuda do adulto
**Pontos:** 2 **Tempo:** 3h **Responsável:** Nicole + Mariana

### 📋 Checklist:
- [ ] Criar wireframe da nova navegação - Nicole - 1h
- [ ] Desenhar novos botões de navegação - Nicole - 1h
- [ ] Implementar novos botões - Mariana - 1h
- [ ] Testar com foco em usabilidade - Ambas - 30min

### ✅ Critérios de Aceite:
- [ ] Botões são grandes o suficiente (44pt mínimo)
- [ ] Fica claro qual botão avança/volta
- [ ] Funciona tanto com toque quanto swipe
```

---

*Use junto com: [Weekly Planning](../processes/WeeklyPlanning.md) | [Product Manager Agent](../agents/ProductManager.md)*
