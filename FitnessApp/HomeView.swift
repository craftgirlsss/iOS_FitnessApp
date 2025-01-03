//
//  HomeView.swift
//  FitnessApp
//
//  Created by XFCE on 03/01/25.
//

import SwiftUI

struct HomeView: View {
    @State var calories: Int = 120
    @State var active: Int = 40
    @State var stand: Int = 6
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                Text("Welcome")
                    .font(.largeTitle)
                    .padding()
                
                HStack {
                    Spacer()
                    VStack {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Calories").font(.callout).bold().foregroundStyle(.red)
                            Text("123 kcal").bold()
                        }.padding(.bottom)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Active").font(.callout).bold().foregroundStyle(.green)
                            Text("10 mins").bold()
                        }.padding(.bottom)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Stand").font(.callout).bold().foregroundStyle(.blue)
                            Text("8 hours").bold()
                        }.padding(.bottom)
                    }
                    Spacer()
                    
                    ZStack {
                        ProgressCircleView(progress: $calories, color: .red, goal: 600)
                        ProgressCircleView(progress: $active, color: .green, goal: 60).padding(.all, 20)
                        ProgressCircleView(progress: $stand, color: .blue, goal: 8).padding(.all, 40)
                    }.padding(.horizontal)
                    
                    Spacer()
                }.padding()
            }
        }
    }
}

#Preview {
    HomeView()
}
