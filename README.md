# 🤖 AI Doc Generator

> Automatically generate professional API documentation from any code file using AI — powered by n8n + Groq.

---

## 📌 Overview

This tool sends your code file to an AI-powered n8n workflow and returns clean, structured API documentation in Markdown format.

### 🔄 How It Works

```text
Your Code File
      ↓
PowerShell / Python Script
      ↓
n8n Webhook (POST request)
      ↓
AI Agent (Groq LLM)
      ↓
output.md — Generated Documentation
```

---

## 🚀 Quick Start

### ✅ Prerequisites

- Windows (PowerShell) **or** Python 3.x installed
- Internet connection
- A code file you want to document (`.js`, `.py`, `.ts`, etc.)

---

## 📂 Project Structure

```bash
ai-doc-generator/
├── workflow.json         # n8n workflow (import this into your n8n instance)
├── generate-docs.ps1     # PowerShell script (Windows)
├── generate_docs.py      # Python script (Windows/Mac/Linux)
├── .env.example          # Environment variable template
├── .gitignore            # Git ignore rules
└── README.md             # Project documentation
```

---

## ⚙️ Setup

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/yourusername/ai-doc-generator.git
cd ai-doc-generator
```

---

### 2️⃣ Configure the Webhook URL

Copy the example environment file:

```bash
cp .env.example .env
```

Edit `.env` and add your webhook URL:

```env
WEBHOOK_URL=https://fahad012.app.n8n.cloud/webhook/generate-docs
```

> ⚠️ Never commit your `.env` file to GitHub.  
> It is already included in `.gitignore`.

---

## 🖥️ Usage

### Option 1 — PowerShell (Windows)

Run the script and pass your file path:

```powershell
.\generate-docs.ps1 -FilePath "C:\path\to\yourfile.js"
```

#### Example

```powershell
.\generate-docs.ps1 -FilePath "$env:USERPROFILE\Desktop\app.js"
```

📄 Output will be saved as `yourfile.md` in the same folder as the input file.

---

### Option 2 — Python (Windows / Mac / Linux)

#### Install Required Library

```bash
pip install requests
```

#### Run the Script

```bash
python generate_docs.py path/to/yourfile.js
```

#### Example

```bash
python generate_docs.py ./src/utils.py
```

📄 Output will be saved as `yourfile.md` in the same folder.

---

### Option 3 — cURL (Terminal)

```bash
curl -X POST https://fahad012.app.n8n.cloud/webhook/generate-docs \
  -H "Content-Type: application/json" \
  -d "{\"fileContent\": \"$(cat yourfile.js)\"}"
```

---

### Option 4 — Postman (GUI)

1. Open Postman  
2. Set method to **POST**  
3. URL:

```text
https://fahad012.app.n8n.cloud/webhook/generate-docs
```

4. Go to:

```text
Body → raw → JSON
```

5. Paste:

```json
{
  "fileContent": "your code here"
}
```

6. Click **Send**

---

## 📄 Example Output

### Input

A JavaScript utility file

### Output (`output.md`)

````markdown
# API Documentation

## Overview
...

## Functions

### greet(name)

**Description:** Returns a greeting string.

**Parameters:**
- `name` (string): The name to greet

**Returns:** string
...
