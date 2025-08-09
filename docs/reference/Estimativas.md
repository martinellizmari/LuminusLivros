# 📊 Guia de Estimativas

> Como estimar story points e tempo para tarefas da LivrosLuminus

## 🎯 Story Points - Escala de Complexidade

### Para Mariana (Desenvolvimento)

**1 ponto** - "Já fiz isso antes" (≈ 1h)
- Trocar cor ou texto em tela existente
- Ajuste simples de layout
- Bug fix óbvio
- Adicionar padding/margin

**2 pontos** - "Simples mas demora" (≈ 2h)
- Novo botão com ação simples
- Adicionar nova propriedade a model
- Integrar asset novo fornecido
- Pequena mudança de fluxo

**3 pontos** - "Sei fazer, vai demorar" (≈ 3-4h)
- Nova tela básica
- Funcionalidade parecida com existente
- Navegação entre telas
- Formulário simples

**5 pontos** - "Complexo mas factível" (≈ 5-6h)
- Sistema novo (favoritos, busca)
- Integração entre múltiplas telas
- Lógica de negócio elaborada
- Player de áudio/video

**8 pontos** - "Muito complexo" (≈ 8+ horas)
- Funcionalidade muito grande
- Muitas incertezas técnicas
- Envolve pesquisa/aprendizado
- ⚠️ **Precisa quebrar em tarefas menores**

### Para Nicole (Design + UX/UI)

**1-2h** - Ajustes simples
- Trocar cor/fonte existente
- Redimensionar elemento
- Export de asset simples

**2-3h** - Criação nova
- Mockup de tela simples
- Wireframe básico
- Ícone ou ilustração pequena
- Definir paleta de cores

**3h+** - Trabalho complexo
- Ilustração detalhada
- Múltiplos assets coordenados
- Wireframe de fluxo completo
- Diagramação de páginas

---

## 🧮 Calibração de Estimativas

### Exemplos de Referência (Mariana)

**1 ponto:**
- Mudar cor do botão "Próxima página"
- Adicionar padding em uma tela
- Corrigir texto que está cortando

**3 pontos:**
- Criar tela de favoritos básica
- Implementar botão de play/pause
- Adicionar transição entre páginas

**5 pontos:**
- Sistema completo de favoritos (salvar, listar, remover)
- Player de áudio com controles
- Sistema de busca de livros

### Exemplos de Referência (Nicole)

**2h:**
- Wireframe da tela de favoritos
- Paleta de cores para nova seção
- Ícones de play/pause/stop

**3h:**
- Ilustração de uma página de livro
- Mockup detalhado de nova tela
- Conjunto de assets para uma funcionalidade

---

## 📈 Fatores que Aumentam Estimativa

### +50% se...
- [ ] Nunca fizemos algo parecido
- [ ] Depende de biblioteca/tecnologia nova
- [ ] Envolve múltiplas telas/componentes
- [ ] Precisa de research antes

### +100% se...
- [ ] Não sabemos bem como fazer
- [ ] Envolve integração complexa
- [ ] Tem muitas incertezas técnicas
- [ ] É crítico e não pode dar errado

### Reduzir estimativa se...
- [ ] Já fizemos exatamente isso antes
- [ ] Temos código/asset similar para copiar
- [ ] É uma pequena variação de algo existente

---

## 🎯 Dicas de Estimativa

### Para Mariana:
**Compare sempre**: "Isso é mais ou menos complexo que [tarefa anterior]?"

**Pense em etapas**:
1. Criar a interface
2. Implementar a lógica  
3. Integrar com resto do app
4. Testar tudo

**Quando na dúvida**: Estime para cima. É melhor terminar antes do que atrasar.

### Para Nicole:
**Considere iterações**: Primeira versão + ajustes + versão final

**Pense no contexto**: Asset isolado vs coordenado com outros

**Inclua tempo de alinhamento**: 30min para validar com Mariana

---

## 🔄 Aprendizado Contínuo

### A cada semana:
1. **Compare estimado vs real**
2. **Identifique padrões** (que tipo de tarefa você subestima?)
3. **Ajuste calibração** baseado no histórico
4. **Documente** aprendizados para próximas estimativas

### Após 1 mês:
- **Velocity estabilizada**: Média de pontos por semana
- **Accuracy melhorada**: Estimativas mais precisas
- **Confiança aumentada**: Menos incerteza no planning

---

*Use junto com: [Sprint Planner](../agents/SprintPlanner.md) | [Product Manager](../agents/ProductManager.md)*
