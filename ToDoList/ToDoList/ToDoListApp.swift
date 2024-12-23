//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Jeriel Chan on 29/11/22.
//

import SwiftUI

/* MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manages models for View
 
 */

@main
struct ToDoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
