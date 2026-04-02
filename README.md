# looker-extension

# 🚀 Guide: Modernized Looker Embedding

Use this guide to explain the advanced features we built for your portal to stakeholders and customers.

---

## 🌓 1. Comparative Split-Screen (Self-Service Contrast)
- **What it is**: Allows users to compare the same dashboard side-by-side with different filters (e.g., Left side is *Accessories*, Right side is *Swim*).
- **Pitch**: *"No more opening multiple tabs to compare regions or product lines. Compare data side-by-side instantly."*
- **Code Snippet (Layout Switch)**:
  ```javascript
  {!isSplitView ? (
    <LookerDashboard dashboardId={31} filters={standard} />
  ) : (
    <div className="grid grid-cols-12 gap-6">
      <div className="col-span-6"><LookerDashboard filters={left} /></div>
      <div className="col-span-6"><LookerDashboard filters={right} /></div>
    </div>
  )}
  ```

---

## 🤖 2. GenAI Conversational Assistant UI
- **What it is**: A floating action button that opens an AI chat panel for context-aware questions.
- **Pitch**: *"We are bringing Generative AI to your BI. Ask the platform questions in natural language."*
- **Code Snippet (Typing Simulation)**:
  ```javascript
  const handleSend = (text) => {
    setMessages([...messages, { text, sender: 'user' }]);
    setTimeout(() => {
      setMessages([...messages, { text: 'Simulated AI Response...', sender: 'ai' }]);
    }, 2000);
  };
  ```

---

## 🚨 3. Live Anomaly & Intelligence Sidebar
- **What it is**: A sliding notification tray showing auto-detected anomalies (Spikes/Shortages).
- **Pitch**: *"The dashboard does the thinking for you, shouting out trends before they become problems."*

---

## 🎛️ 4. Two-Way State Synchronization (Smart Filters)
- **What it is**: If you filter in Looker, React checkboxes update. If you check in React, Looker updates. They are "braided" together.
- **Code Snippet (Listening to iframe event)**:
  ```javascript
  window.addEventListener('message', (event) => {
    const data = JSON.parse(event.data);
    if (data.type === 'dashboard:filters:changed') {
      updateReactState(data.filters);
    }
  });
  ```

---

## 🔐 5. Role-Based Feature Gating (Governance)
- **What it is**: Hiding specific buttons (Export, Schedule) for standard users while keeping them visible for admins.
- **Pitch**: *"Portal security is ironclad. Standard users can read data, but only Admins can export it."*
