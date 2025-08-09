# 📝 Template: Decisão

> Modelo para documentar decisões importantes da equipe

```markdown
## Decisão: [Nome da decisão]
**Data:** [DD/MM/AAAA]
**Responsável:** [Quem decide]

### 🎯 Situação
[O que precisamos decidir e por quê]

### 🔍 Opções Consideradas
**Opção A:** [Descrição]
- **Esforço:** [Xh ou pontos]
- **Impacto:** [Alto/Médio/Baixo]
- **Prós:** [Benefícios]
- **Contras:** [Desvantagens]

**Opção B:** [Descrição]  
- **Esforço:** [Xh ou pontos]
- **Impacto:** [Alto/Médio/Baixo]
- **Prós:** [Benefícios]
- **Contras:** [Desvantagens]

### ✅ Decisão Tomada
**Escolhemos:** [Opção X]
**Por que:** [Raciocínio principal]

### 📋 Próximos Passos
- [ ] [Primeira ação] - [Responsável] - [Prazo]
- [ ] [Segunda ação] - [Responsável] - [Prazo]

### 📝 Impacto
**Para Mariana:** [Como afeta o trabalho dela]
**Para Nicole:** [Como afeta o trabalho dela]
**Para o usuário:** [Como melhora a experiência]
```

## 💡 Dicas de Uso

### Quando usar este template:
- ✅ Decisões que afetam o roadmap
- ✅ Escolhas técnicas importantes
- ✅ Mudanças no processo da equipe
- ✅ Priorização entre opções similares

### Quando NÃO usar:
- ❌ Decisões rápidas do dia a dia
- ❌ Escolhas puramente estéticas
- ❌ Tasks óbvias do backlog

### Como preencher bem:

**Situação**: Seja específico sobre o problema
- ❌ "Precisamos melhorar a UX"
- ✅ "Crianças não conseguem encontrar o botão de pausa"

**Opções**: Compare maçãs com maçãs
- Sempre inclua esforço e impacto
- Liste prós/contras concretos
- Considere timeline

**Decisão**: Explique o raciocínio
- Por que esta opção vs as outras?
- Qual foi o fator decisivo?
- Como isso se alinha com nossos objetivos?

## 📖 Exemplos Práticos

### Exemplo 1: Decisão Técnica
```markdown
## Decisão: Como implementar favoritos
**Data:** 15/03/2024
**Responsável:** Mariana

### 🎯 Situação
Usuários querem marcar livros favoritos, mas não sabemos se salvar localmente ou em servidor.

### 🔍 Opções Consideradas
**Opção A: Local (UserDefaults)**
- **Esforço:** 2h
- **Impacto:** Médio
- **Prós:** Rápido, simples, funciona offline
- **Contras:** Perde dados se reinstalar app

**Opção B: Servidor/iCloud**
- **Esforço:** 8h
- **Impacto:** Alto  
- **Prós:** Persiste entre devices, backup automático
- **Contras:** Complexidade, depende de conexão

### ✅ Decisão Tomada
**Escolhemos:** Opção A (Local)
**Por que:** Para MVP, simplicidade é mais importante. Podemos migrar depois.

### 📋 Próximos Passos
- [ ] Implementar UserDefaults - Mariana - Esta semana
- [ ] Testar com múltiplos livros - Ambas - Sexta
- [ ] Documentar para futura migração - Mariana - Próxima semana
```

---

*Use junto com: [Weekly Planning](../processes/WeeklyPlanning.md) | [Product Manager](../agents/ProductManager.md)*
