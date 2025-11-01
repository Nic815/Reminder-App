# 🧭 Reminder App — Simple, Elegant Task Manager for iOS

## 📱 Overview
**Reminder App** is a minimalistic iOS application built with **SwiftUI** and **SwiftData** that helps users create, organize, and track daily tasks effortlessly.  
It features categorized reminder lists, customizable icons, real-time updates, and local data persistence — all wrapped in a clean, modern interface.

---

## ✨ Key Features
- 🗂️ **Categorized Lists:** Organize tasks under multiple reminder lists (e.g., Work, Home, Health).  
- ✅ **Completion Tracking:** Tap to mark reminders as complete/incomplete in one click.  
- 🧠 **Local Persistence:** Automatically saves all data using **SwiftData** (no backend setup needed).  
- 🎨 **Customizable Icons:** Choose from built-in SF Symbols for each list.  
- 🪄 **Dynamic UI:** Responsive layout with adaptive grids and list previews.  
- 📅 **Instant Editing:** Add or edit reminders inline — no extra screens required.

---
## 🖼️ App Preview

Here’s a glimpse of the **Reminder App** in action 👇  

| Home Screen | Create Section | Reminder List |
|--------------|----------------|----------------|
| ![Home Screen](<img width="1206" height="2622" alt="Simulator Screenshot - iPhone 17 Pro - 2025-09-24 at 12 16 52" src="https://github.com/user-attachments/assets/e861447c-7211-4cfb-9e9e-01dde8e80299" />
) | ![Create Section](<img width="1206" height="2622" alt="Simulator Screenshot - iPhone 17 Pro - 2025-09-24 at 12 16 42" src="https://github.com/user-attachments/assets/5b4aee34-951c-4eeb-aae0-f03b9c5226b7" />
) | ![Reminder List](<img width="1206" height="2622" alt="Simulator Screenshot - iPhone 17 Pro - 2025-09-24 at 12 18 48" src="https://github.com/user-attachments/assets/0aa71433-b3d9-4436-9d94-a7253a7d9373" />
) |

| Completed Task | 
|---------------|
| ![Completed Task](<img width="1206" height="2622" alt="Simulator Screenshot - iPhone 17 Pro - 2025-09-24 at 12 19 07" src="https://github.com/user-attachments/assets/2b5a486b-24d6-43d1-9ce9-612ac8264e88" />
) | 







---
## 🏗️ Architecture
The app follows a **modular MVVM-inspired structure** using SwiftData for persistence.

| Layer | Files | Responsibility |
|-------|--------|----------------|
| **Models** | `Reminder.swift`, `ReminderList.swift` | Define data entities and relationships for SwiftData. |
| **Views** | `HomeView.swift`, `ReminderListView.swift`, `ReminderRowView.swift`, `ListCardView.swift`, `ReminderListRowView.swift`, `CreateSectionView.swift` | Handle user interaction and presentation using SwiftUI components. |
| **App Entry** | `Reminder_AppApp.swift` | Main app file initializing the SwiftData model container. |

---

## 🧩 File-by-File Breakdown

### **Reminder_AppApp.swift**
- Entry point for the app (`@main` struct).  
- Configures a **SwiftData model container** for `ReminderList` entities.  
- Launches `HomeView()` as the root screen.

### **HomeView.swift**
- Main dashboard displaying:
  - A **grid preview** of the first few lists.  
  - A **full list section** for all reminder categories.  
- Implements “Add Section” button for creating new lists.  
- Handles deletion and navigation to `CreateSectionView` or `ReminderListView`.  
- Uses SwiftUI’s `NavigationStack`, `LazyVGrid`, and modern `ContentUnavailableView` for empty states.

### **CreateSectionView.swift**
- Form view to create or edit a **Reminder List**.  
- Lets users set a **list name** and choose an **icon** via segmented `Picker`.  
- Clean, form-based design with inline navigation title.

### **ReminderListView.swift**
- Displays all reminders inside a selected list.  
- Supports adding new reminders, deleting existing ones, and toggling completion state.  
- Uses a bottom toolbar button for adding tasks quickly.  
- Persists changes instantly with `modelContext.save()`.

### **ReminderRowView.swift**
- Represents a single reminder item with:
  - A circular checkmark toggle.  
  - Editable text field bound to the reminder’s `name`.  
- Dynamically updates color and completion style using SwiftUI bindings.

### **ListCardView.swift**
- Card-style grid component showing a list’s **name**, **icon**, and **reminder count**.  
- Tapping navigates to the detailed list view (`ReminderListView`).  
- Designed for compact dashboard display.

### **ReminderListRowView.swift**
- Simple list-row layout displaying a **list icon**, **name**, and **count**.  
- Used in “My Lists” section under `HomeView`.

### **Reminder.swift**
- Defines the **Reminder** model entity.  
- Stores `name` and `isCompleted` properties.  
- Integrated with SwiftData’s `@Model` annotation for persistence.

### **ReminderList.swift**
- Defines the **ReminderList** entity (category).  
- Includes list metadata and a one-to-many relationship with `Reminder`.  
- Cascade deletion ensures dependent reminders are cleaned up automatically.

---

## 🛠️ Tech Stack
- **SwiftUI** — Declarative UI for iOS.  
- **SwiftData** — Native persistence layer (replaces Core Data).  
- **Xcode 15+ / iOS 17+** — Compatible with latest SwiftData runtime.  
- **SF Symbols** — Used for list icons.  

---


