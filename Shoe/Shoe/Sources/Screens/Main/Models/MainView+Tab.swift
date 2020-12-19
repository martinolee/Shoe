//
//  MainView+Tab.swift
//  Shoe
//
//  Created by Soohan Lee on 2020/12/19.
//

import SwiftUI


extension MainView {
  enum Tab: Int {
    case home
    case search
    case calendar
  }
}

extension MainView.Tab {
  var title: LocalizedStringKey {
    switch self {
    case .home:
      return "home"
    case .search:
      return "search"
    case .calendar:
      return "calendar"
    }
  }
  
  var imageName: String {
    switch self {
    case .home:
      return "house.fill"
    case .search:
      return "magnifyingglass"
    case .calendar:
      return "calendar"
    }
  }
  
  var view: some View {
    switch self {
    case .home:
      return AnyView(HomeView())
    case .search:
      return AnyView(SearchView())
    case .calendar:
      return AnyView(CalendarView())
    }
  }
  
  var tabItem: some View {
    return Label(self.title, systemImage: self.imageName)
  }
}

extension MainView.Tab: Identifiable {
  var id: Int { rawValue }
}

extension MainView.Tab: CaseIterable {
}
