<div align="center">

# 🏗️ MVP in SwiftUI

**A concise, runnable example of the Model-View-Presenter (MVP) pattern in SwiftUI**

[![Platform](https://img.shields.io/badge/Platform-iOS-000000?style=flat-square&logo=apple)](https://developer.apple.com/ios/)
[![Swift](https://img.shields.io/badge/Swift-5.0-FA7343?style=flat-square&logo=swift&logoColor=white)](https://swift.org)
[![SwiftUI](https://img.shields.io/badge/SwiftUI-blue?style=flat-square&logo=swift&logoColor=white)](https://developer.apple.com/xcode/swiftui/)
[![Xcode](https://img.shields.io/badge/Xcode-16-1575F9?style=flat-square&logo=xcode&logoColor=white)](https://developer.apple.com/xcode/)
[![Stars](https://img.shields.io/github/stars/ahmetbostanciklioglu/MVP_in_SwiftUI?style=flat-square&color=6E48AA)](https://github.com/ahmetbostanciklioglu/MVP_in_SwiftUI/stargazers)
[![Last Commit](https://img.shields.io/github/last-commit/ahmetbostanciklioglu/MVP_in_SwiftUI?style=flat-square&color=4776E6)](https://github.com/ahmetbostanciklioglu/MVP_in_SwiftUI/commits)

</div>

## 📖 Overview

This is a minimal SwiftUI project that demonstrates how the classic **Model-View-Presenter (MVP)** architecture maps onto SwiftUI. It separates the data (`User` model), the presentation logic (`UserPresenter`, an `ObservableObject`), and the UI (`ContentView` / `UserDetailView`).

The presenter exposes an `@Published` property that the view observes, so when the presenter loads a user the SwiftUI view updates automatically. It is intended as a small learning example — the code comments also note that in practice SwiftUI tends to favour MVVM, since a SwiftUI presenter effectively fills the role of a view model.

## ✨ What it covers

- Separating the app into **Model**, **View**, and **Presenter** layers.
- Using an `ObservableObject` presenter with an `@Published` property to drive UI state.
- Wiring a presenter into a view with `@StateObject` and passing it to a child view via `@ObservedObject`.
- Rendering a loading state with `ProgressView` until data is loaded in `onAppear`.
- Understanding why MVVM is often preferred over MVP in SwiftUI.

## 📸 Preview

<div align="center">

<img width="1454" alt="MVP in SwiftUI screenshot" src="https://github.com/user-attachments/assets/4a1378d0-bce4-4770-9c62-59af61f7b4e7" />

</div>

## 🚀 Getting Started

```bash
git clone https://github.com/ahmetbostanciklioglu/MVP_in_SwiftUI.git
cd MVP_in_SwiftUI
open "MVP in SwiftUI.xcodeproj"
```

Then select a simulator (or a connected device) in Xcode and press **⌘R** to build and run.

## 📋 Requirements

- iOS 18.2 or later
- Xcode 16 or later
- Swift 5.0

## 🧑‍💻 Author

**Ahmet Bostancıklıoğlu** — [@ahmetbostanciklioglu](https://github.com/ahmetbostanciklioglu) · ahmetbostancikli@gmail.com

> ⭐ If this helped you, consider giving the repo a star!
