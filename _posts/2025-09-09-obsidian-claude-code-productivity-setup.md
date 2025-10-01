---
layout: post
title: "Building a Productivity System with Obsidian and Claude Code"
subtitle: "Combine flexible note-taking with intelligent automation for better productivity"
date: 2025-09-09 12:00:00 -0800
categories: [productivity, obsidian]
background: https://images.unsplash.com/photo-1434030216411-0b793f4b4173?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80
---

Setting up an effective productivity system can transform how you manage tasks and projects. After experimenting with various approaches, I've found that combining Obsidian's flexible note-taking capabilities with Claude Code's automation potential creates a powerful workflow for task management and project tracking.

## The Challenge with Traditional Task Management

Most task management systems suffer from a fundamental problem: they isolate tasks from their context. You end up with:

- Tasks scattered across different tools and locations
- Loss of project context when viewing daily schedules
- Manual duplication between project planning and daily execution
- Difficulty maintaining connections between related work

## Why Obsidian + Claude Code?

**Obsidian** provides a flexible, interconnected note-taking system where tasks remain connected to their project context. **Claude Code** can help automate the setup process, generate templates, and streamline documentation.

### Core Benefits

1. **Contextual Task Management**: Tasks live within project files where they belong
2. **Automated Documentation**: Claude Code can help generate consistent templates and documentation
3. **Flexible Structure**: Adapt the system to your specific workflow needs
4. **Future-Proof**: Plain markdown files that aren't locked into any proprietary system

## Essential Vault Structure

![Productivity System Organization](https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-4.0.3&auto=format&fit=crop&w=1974&q=80){: .img-fluid}

Here's the current structure from a vault (e.g., `your-vault`) that powers this system:

```
<YourVault>/
├── notes/
│   ├── daily/YYYY/MM-MMMM/
│   ├── clippings/
│   ├── fleeting/
│   └── _templates/
├── projects/
│   ├── work/
│   ├── personal/
│   └── home/
├── views/
├── scripts/
├── _attachments/
└── _archive/
```

### Daily Notes Template

Your daily note template (Templater + Tasks + Dataview) includes:

- **Agenda**: auto-lists tasks scheduled for today (Tasks query)
- **Overdue** and **Next two weeks** rollups (Tasks queries)
- **Quick Capture** for inboxing thoughts and todos
- **Time Blocks** (morning/afternoon/evening) for planning
- **Completed Today** (Dataview of tasks completed today)
- **Navigation** links to yesterday/tomorrow and hubs

Example snippets:

```markdown
> [!todo]+ Today
> ```tasks
> not done
> happens {{date:YYYY-MM-DD}}
> hide recurrence rule
> hide due date
> hide scheduled date
> sort by priority
> ```
```

```markdown
## 🎉 Completed Today
```dataview
TASK
WHERE completed = date("{{date:YYYY-MM-DD}}")
```
```

```markdown
## ⏰ Time Blocks
### Morning
- [ ] **09:00-10:00**:
- [ ] **10:00-11:00**:
- [ ] **11:00-12:00**:
```

### Project Template Structure

Each project note uses frontmatter properties and structured sections:

- **Frontmatter**: `type: project`, `status`, `priority`, `created/updated`
- **Goal** and **Info** (context tags like `#context/work | personal | home`)
- **Tasks** with priority emojis (⏫/🔼/🔽) and optional `[due:: YYYY-MM-DD]`
- **Scheduled Tasks View** (Dataview over tasks with due dates)
- **Notes & Progress** with dated entries and navigation

Example snippets:

```markdown
---
type: project
status: active
priority: medium
created: {{date:YYYY-MM-DD}}
updated: {{date:YYYY-MM-DD}}
---
```

```markdown
## 📅 Scheduled Tasks View
```dataview
TASK
FROM "{{title}}"
WHERE due AND !completed
SORT due ASC
```
```

## Implementation Workflow

### Step 1: Set Up Core Structure
Create the folders shown above and add templates in `notes/_templates/`:
- `Daily Note Template.md` (Agenda/Overdue/Next two weeks, Quick Capture, Time Blocks)
- `Project Template.md` (frontmatter, tasks, scheduled view, progress)

### Step 2: Build Daily Habits
Start using the daily note template consistently. The key is making it easy to capture tasks while maintaining their connection to larger projects.

### Step 3: Connect Projects to Daily Work
Write tasks in project notes and schedule with `[due:: YYYY-MM-DD]`. Tasks auto-surface in the daily note Agenda via Tasks plugin queries, keeping a single source of truth.

### Step 4: Iterate and Improve
Track what works and what doesn't. Adjust templates and workflows based on real usage patterns.

## Advanced Features

### Template & Plugin Setup
- **Templater**: renders dates, navigation, and boilerplate
- **Tasks**: powers Agenda/Overdue/Next two weeks checklists
- **Dataview**: shows Completed Today and project task views
- **Calendar** and **Natural Language Dates**: quality-of-life navigation

### Documentation Generation
Automatically generate setup guides and workflow documentation to share with team members or for future reference.

### Integration Possibilities
Explore connections with other tools in your workflow while keeping Obsidian as the central hub for context and planning.

## Tasks Dashboard and Bookmarks

### Tasks Dashboard (`views/Tasks.md`)
This simple dashboard gives you a fast overview of what’s due and everything open.

```markdown
## Due On or Before Today

```tasks
due before tomorrow
not done
```

## All Tasks
```tasks
not done
```
```

Ready to paste:

```text
Create (or update) this file:
PATH: <path-to-your-vault>/views/Tasks.md

REPLACE WITH:
## Due On or Before Today

```tasks
due before tomorrow
not done
```

## All Tasks
```tasks
not done
```
```

### Bookmarks (Quick Links)
Keep a small bookmarks note with high-frequency links for navigation.

Example:

```markdown
# Bookmarks

## Hubs
- [[Task Management]]
- [[Projects MOC]]
- [[notes/daily/{{date:YYYY}}/{{date:MM-MMMM}}/{{date:YYYY-MM-DD-dddd}}|Today’s Daily Note]]

## Views
- [[views/Tasks]]

## Templates
- [[notes/_templates/Daily Note Template]]
- [[_templates/Project Template]]
```

Ready to paste:

```text
Create this file if it doesn't exist:
PATH: <path-to-your-vault>/notes/Bookmarks.md

CONTENTS:
# Bookmarks

## Hubs
- [[Task Management]]
- [[Projects MOC]]
- [[notes/daily/{{date:YYYY}}/{{date:MM-MMMM}}/{{date:YYYY-MM-DD-dddd}}|Today’s Daily Note]]

## Views
- [[views/Tasks]]

## Templates
- [[notes/_templates/Daily Note Template]]
- [[_templates/Project Template]]
```

## Using Claude Code with This System

Claude Code helps you set up and maintain the vault quickly. Here are practical prompts that work well:

### 1) Scaffold the Vault Structure

```text
Create these folders under <path-to-your-vault> exactly as listed:
- notes/daily/YYYY/MM-MMMM/
- notes/clippings/
- notes/fleeting/
- notes/_templates/
- projects/work/, projects/personal/, projects/home/
- views/, scripts/, _attachments/, _archive/
```

### 2) Generate Templates

```text
Open notes/_templates/Daily Note Template.md and replace its contents with my Tasks/Dataview daily template sections: Agenda, Overdue, Next two weeks, Quick Capture, Time Blocks, Completed Today, and nav.
Also update notes/_templates/Project Template.md with frontmatter (type/status/priority/created/updated), task sections with priority emojis, and a Dataview scheduled tasks view.
```

### 3) Bulk Refactors and Conventions

```text
Scan projects/personal and projects/work and ensure all project notes have:
- frontmatter: type: project, status: active|on-hold|completed, priority
- a "## ✅ Tasks" section
- use ⏫ 🔼 🔽 priority markers
Add any missing pieces without altering existing content.
```

### 4) Query the Vault (Examples)

Ask Claude Code to search and summarize across your vault. Useful prompts:

```text
List all open tasks missing a due date. Show file path and line.
- Scope: <path-to-your-vault>
- Include only lines with "- [ ]" that do NOT contain "[due::".
```

```text
Find overdue tasks: due date before today and not completed. Output: task text, due date, file, and suggest next action.
```

```text
Inventory Dataview/Tasks queries in the vault. For each note, list the query block type (dataview or tasks) and purpose in one sentence.
```

```text
Identify project notes missing a "Scheduled Tasks View" Dataview block and propose the exact block to insert.
```

Tip: When asking Claude Code to make edits, specify exact files and sections to change, and provide a short before/after snippet to reduce ambiguity.

### Claude Code Setup (Quick)

Recommended setup for smooth edits:

- **Access**: Grant read/write to `<path-to-your-vault>` and this blog repo
- **Indexing**: Include `**/*.md`; exclude large assets like `_attachments/**`
- **Review**: Prefer dry-run previews; approve diffs before applying
- **Backups**: Enable version control or snapshot before bulk changes

Copy/paste-ready prompt to edit a specific template file:

```text
Edit this file (overwrite contents):
PATH: <path-to-your-vault>/notes/_templates/Daily Note Template.md

REPLACE WITH:
---
type: daily
date: {{date:YYYY-MM-DD}}
---

# {{date:dddd, MMMM D, YYYY}}

> [!todo]+ Today
```tasks
not done
happens {{date:YYYY-MM-DD}}
hide recurrence rule
hide due date
hide scheduled date
sort by priority
```

> [!danger]+ Overdue 
```tasks
not done
(due before {{date:YYYY-MM-DD}}) OR ((happens before {{date:YYYY-MM-DD}}) AND (priority is above none))
hide recurrence rule
sort by due date
```

> [!tip]- Next two weeks
```tasks
not done
happens after {{date:YYYY-MM-DD}}
happens before {{date+14d:YYYY-MM-DD}}
hide recurrence rule
hide due date
hide scheduled date
group by happens
```

## 📝 Quick Capture
- [ ]

## ⏰ Time Blocks
### Morning
- [ ] **09:00-10:00**:
- [ ] **10:00-11:00**:
- [ ] **11:00-12:00**:

## 🎉 Completed Today
```dataview
TASK
WHERE completed = date("{{date:YYYY-MM-DD}}")
```

---
Navigation: [[Task Management]] | [[Projects MOC]]
```

### Project Template (Ready to paste)

```text
Edit this file (overwrite contents):
PATH: <path-to-your-vault>/_templates/Project Template.md

REPLACE WITH:
---
type: project
status: active
context: 
priority: medium
created: {{date:YYYY-MM-DD}}
updated: {{date:YYYY-MM-DD}}
---

# {{title}}

## 🎯 Project Goal
*What does success look like for this project?*

## 📊 Project Info
- **Status**: 🟡 Active
- **Context**: #context/work OR #context/personal OR #context/home
- **Priority**: ⏫ High / 🔼 Medium / 🔽 Low
- **Target Date**: 

## 📋 Requirements
### Must Have
### Should Have  
### Nice to Have

## ✅ Tasks
*Add [due:: YYYY-MM-DD] to schedule tasks in daily notes*
*Add priority indicators: ⏫ (high) 🔼 (medium) 🔽 (low)*

### ⏫ High Priority
- [ ] 

### 🔼 Medium Priority

### 🔽 Low Priority

### ✔️ Completed
- [x] 

## 📅 Scheduled Tasks View
```dataview
TASK
FROM "{{title}}"
WHERE due AND !completed
SORT due ASC
```

## 📝 Notes & Progress
### {{date:YYYY-MM-DD}}
- 

## 🔗 Related
- [[Projects MOC]]
- 

## 📊 Progress Tracking
- [ ] 0% - Project initiated
- [ ] 25% - Requirements defined
- [ ] 50% - Core work in progress  
- [ ] 75% - Major milestones complete
- [ ] 100% - Project complete

---
**Navigation**: [[Projects MOC]] | [[Task Management]] | [[Daily/{{date:YYYY-MM-DD}}]]
```

## Key Success Factors

**Start Simple**: Begin with basic templates and gradually add complexity as you understand your workflow better.

**Maintain Consistency**: Use Claude Code to ensure templates and documentation remain consistent across projects.

**Regular Review**: Schedule weekly reviews to assess what's working and what needs adjustment.

**Context Preservation**: Always prioritize keeping tasks connected to their broader project context.

## Getting Started

The beauty of this system is that you can start small and expand gradually:

1. Set up the basic folder structure
2. Create simple daily and project templates
3. Begin using daily notes consistently
4. Add projects as they come up
5. Iterate based on what you learn

This approach creates a productivity system that grows with your needs while maintaining the flexibility to adapt to changing requirements.

---

*This system has transformed how I approach task management and project planning. The combination of Obsidian's flexibility with Claude Code's automation capabilities creates a workflow that's both powerful and sustainable.*