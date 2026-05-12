# 🤖 AI Research Summarizer

> Type any topic → Get a professional research document instantly.
> Powered by **n8n + Groq AI + Google Drive**

Built by **Fahad Azhar** 🇵🇰

---

## ⚡ What It Does

Send any topic → AI generates a complete HTML research page with:
- Overview
- Key Points
- Real-World Example
- Study Further
- Summary

The output opens in your browser automatically and saves to Google Drive.

---

## 🔗 Webhook URL

```
https://fahad012.app.n8n.cloud/webhook/generate-docs
```

> ⚠️ Make sure workflow is **Published** (green dot) in n8n before running.

---

## 🚀 How to Run

### Step 1 — Open PowerShell
Press `Windows + R` → type `powershell` → press Enter

### Step 2 — Copy and Paste This Script
```powershell
$uri = "https://fahad012.app.n8n.cloud/webhook/generate-docs"
$body = '{"topic": "YOUR TOPIC HERE"}'
$response = Invoke-RestMethod -Uri $uri -Method POST -Body $body -ContentType "application/json"
$response.output | Out-File "$env:USERPROFILE\Desktop\output.html" -Encoding UTF8
Start-Process "$env:USERPROFILE\Desktop\output.html"
```

### Step 3 — Replace `YOUR TOPIC HERE` with any topic
```powershell
$body = '{"topic": "what is machine learning"}'
```

### Step 4 — Press Enter
Browser opens automatically with your research! ✅

---

## 💡 Topic Ideas

Just replace the topic text — you can research **anything!**

### 🖥️ Computer Science
```powershell
$body = '{"topic": "what is data science"}'
$body = '{"topic": "what is cybersecurity"}'
$body = '{"topic": "what is blockchain technology"}'
$body = '{"topic": "how to learn Python programming"}'
$body = '{"topic": "what is object oriented programming"}'
$body = '{"topic": "how does a web browser work"}'
$body = '{"topic": "what is API development"}'
$body = '{"topic": "what is artificial intelligence"}'
$body = '{"topic": "what is cloud computing"}'
```

### 🇵🇰 Pakistan & Freelancing
```powershell
$body = '{"topic": "how to start freelancing in Pakistan"}'
$body = '{"topic": "best freelancing platforms for Pakistanis"}'
$body = '{"topic": "how to earn dollars from Pakistan"}'
$body = '{"topic": "top IT skills in demand in Pakistan 2026"}'
$body = '{"topic": "how to create Fiverr profile in Pakistan"}'
$body = '{"topic": "how to get first client on Upwork in Pakistan"}'
```

### 📚 University Subjects
```powershell
$body = '{"topic": "what is operating system"}'
$body = '{"topic": "what is data structures and algorithms"}'
$body = '{"topic": "how does computer networking work"}'
$body = '{"topic": "what is software engineering"}'
$body = '{"topic": "what is database management system"}'
$body = '{"topic": "what is computer architecture"}'
$body = '{"topic": "what is discrete mathematics"}'
```

### 🌍 General Knowledge
```powershell
$body = '{"topic": "how does the stock market work"}'
$body = '{"topic": "what is cryptocurrency"}'
$body = '{"topic": "how does 5G technology work"}'
$body = '{"topic": "how does ChatGPT work"}'
$body = '{"topic": "what is quantum computing"}'
```

---

## ⚡ Quick One-Liner

Copy this entire line, replace `YOUR TOPIC HERE` and run:

```powershell
$uri = "https://fahad012.app.n8n.cloud/webhook/generate-docs"; $body = '{"topic": "YOUR TOPIC HERE"}'; $r = Invoke-RestMethod -Uri $uri -Method POST -Body $body -ContentType "application/json"; $r.output | Out-File "$env:USERPROFILE\Desktop\output.html" -Encoding UTF8; Start-Process "$env:USERPROFILE\Desktop\output.html"
```

---

## 📁 Output

```
✅ Browser opens automatically with professional HTML page
✅ File saved to Desktop as output.html
✅ File uploaded to Google Drive automatically
```

---

## 🔄 How It Works

```
PowerShell
    ↓ POST {"topic": "..."}
Webhook Node
    ↓
AI Agent (Groq)
generates HTML research
    ↓
Code in JavaScript
converts to HTML file
    ↓
Google Drive
saves .html file
    ↓
Respond to Webhook
returns HTML to you
    ↓
output.html opens in browser
```

---

## ❓ Troubleshooting

| Problem | Fix |
|---|---|
| Empty output file | Use `$response.output` not `$response` |
| Webhook not detecting | Make sure workflow is **Published** in n8n |
| Browser shows blank page | Check n8n execution logs for errors |
| Google Drive not saving | Check Google Drive credentials in n8n |

---

## 📜 Files Included

| File | Description |
|---|---|
| `workflow.json` | Import into n8n to set up the workflow |
| `generate-research.ps1` | PowerShell script |
| `README.md` | This file |

---

## 📜 License

MIT — free to use, modify, and share.

---

## 👨‍💻 Author

**Fahad Azhar** — Pakistan 🇵🇰

> ⭐ If this helped you, give it a star on GitHub!