# 🗂️ Sprints LivrosLuminus

> Documentação e histórico de sprints semanais da equipe

## 📅 Como Funciona

### 🎯 Ciclo de Sprint (7 dias)
- **Segunda**: FASE 1 - Preparação (15min)
- **Terça**: FASE 2 - Reunião de Planning (60min) 
- **Qua-Seg**: FASE 3 - Execução (trabalho durante semana)
- **Segunda seguinte**: FASE 4 - Review + Retrospectiva (5min)

---

## 📋 Estrutura de Arquivos

### **📁 templates/**
- **[SprintSemanal.md](./templates/SprintSemanal.md)** - Template base para criar nova sprint

### **📁 arquivos de sprint**
- **Sprint-YYYY-MM-DD.md** - Uma sprint por arquivo (data = terça do planning)

**Exemplo de nomenclatura:**
- `Sprint-2025-08-12.md` - Sprint que começou em 12/08/2025 (terça)
- `Sprint-2025-08-19.md` - Sprint que começou em 19/08/2025 (terça)

---

## 🎭 Como Criar Nova Sprint

### **1. Use o Maestro Agent primeiro:**
**Diga:** "Vamos planejar a sprint da próxima semana"
**Maestro direciona para:** [Executive Plan](../ExecutivePlan.md) completo

### **2. Copie o template:**
```bash
cp docs/sprints/templates/SprintSemanal.md docs/sprints/Sprint-[DATA].md
```

### **3. Preencha as seções:**
1. **FASE 1**: Preparação (segunda antes da reunião)
2. **FASE 2**: Planning na reunião (terça)
3. **FASE 3**: Acompanhe execução (durante semana)
4. **FASE 4**: Review e retrospectiva (segunda seguinte)

---

## 📊 Sprints Atuais

### 🎯 Sprint Ativa
- **[Sprint 12/08/2025](./Sprint-2025-08-12.md)** - Funcionalidades core + UX foundations

### 📚 Histórico
- [Lista será preenchida conforme sprints forem concluídas]

---

## 🔄 Workflow de Sprint

### **📋 Antes da Reunião (Segunda)**
**Para Mariana (10min):**
1. Consulte [Business Analyst](../agents/BusinessAnalyst.md) para contexto estratégico
2. Use [Product Manager](../agents/ProductManager.md) para priorizar ROADMAP
3. Prepare sugestões para reunião

**Para Nicole (5min):**
1. Review work in progress
2. Check dependencies com Mariana

### **🎯 Durante Reunião (Terça - 60min)**
**Siga processo do [Weekly Planning](../processes/WeeklyPlanning.md):**
1. Check-in (10min)
2. Priorização com [Product Manager](../agents/ProductManager.md) (20min)
3. Planning com [Sprint Planner](../agents/SprintPlanner.md) (25min)
4. Sync próxima semana (5min)

### **🚀 Durante Execução (Qua-Seg)**
**Daily check-ins (5min por dia):**
- Status update Mariana + Nicole
- Identificar bloqueios
- Ajustar se necessário

### **🔍 Review (Segunda seguinte - 5min)**
**Retrospectiva rápida:**
- O que funcionou / pode melhorar?
- Métricas: velocity, burn rate, bloqueios
- Uma ação para próxima sprint

---

## 🎯 Métricas Importantes

### **📊 Por Sprint:**
- **Velocity Mariana**: Story points completados
- **Velocity Nicole**: Deliverables completados
- **Burn Rate**: Horas planejadas vs realizadas
- **Success Rate**: % tarefas completadas

### **📈 Tendências (acompanhar ao longo do tempo):**
- Velocity média da equipe
- Precisão das estimativas 
- Principais tipos de bloqueios
- Tempo médio por tipo de tarefa

---

## 🔗 Links Relacionados

**🎭 Entry Points:**
- [Maestro Agent](../MaestroAgent.md) - "Vamos planejar sprint"
- [Executive Plan](../ExecutivePlan.md) - Processo completo

**🤖 Agentes:**
- [Business Analyst](../agents/BusinessAnalyst.md) - Contexto estratégico
- [Product Manager](../agents/ProductManager.md) - Priorização
- [Sprint Planner](../agents/SprintPlanner.md) - Organização
- [UX Guide](../agents/UXGuide.md) - Design (Nicole)

**📋 Templates:**
- [Tarefa Semanal](../templates/TarefaSemanal.md) - Quebrar tarefas
- [Decisão](../templates/Decisao.md) - Documentar escolhas

**📚 Referência:**
- [Glossário](../reference/Glossario.md) - Termos técnicos
- [Estimativas](../reference/Estimativas.md) - Como estimar
