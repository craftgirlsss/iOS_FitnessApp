//
//  FitnessTabView.swift
//  FitnessApp
//
//  Created by XFCE on 03/01/25.
//

import SwiftUI

struct FitnessTabView: View {
    @State var selectedTab = "Home"
    
    init(){
        let appearence = UITabBarAppearance()
        appearence.configureWithOpaqueBackground()
        appearence.stackedLayoutAppearance.selected.iconColor = .green
        appearence.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.green]
        UITabBar.appearance().scrollEdgeAppearance = appearence
    }
    
    var body: some View {
        TabView(selection: $selectedTab, content: {
            //Home Tab
            HomeView()
                .tag("Home")
                .tabItem{
                    Image(systemName: "homekit")
                    Text("Home")
                }
            
            // History Tab
            HistoricDataView()
                .tag("Historic")
                .tabItem{
                    Image(systemName: "chart.line.uptrend.xyaxis")
                    Text("Historic")
                }
        })
    }
}

#Preview {
    FitnessTabView()
}
