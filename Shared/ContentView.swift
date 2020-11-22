//
//  ContentView.swift
//  Shared
//
//  Created by Rishabh on 22/11/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "19.square")
                    Text("Home")
                }
            
            MedidateView()
                .tabItem {
                    Image(systemName: "circles.hexagongrid")
                    Text("Medidate")
                }
            
            WorkoutView()
                .tabItem {
                    Image(systemName: "flame.fill")
                    Text("Workout")
                }
            
            SleepView()
                .tabItem {
                    Image(systemName: "moon.zzz.fill")
                    Text("Sleep")
                }
            
            MoreView()
                .tabItem {
                    Image(systemName: "line.horizontal.3")
                    Text("More")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
