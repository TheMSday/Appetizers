//
//  AppetizersListView.swift
//  Appetizers
//
//  Created by Mehmet Güngörmüş on 14.07.25.
//

import SwiftUI

struct AppetizersListView: View {
   
    @StateObject private var viewModel = AppetizersViewModel()
    //Stateobject is listening to changec from viewmodel
    
    //We have an empty Array to start, then we will make a network call,
    // our network call is going to populate that array
    // and when we populate this array, because its a State variable that means
    // our view is kinda watching it and our array will have changed,
    // so that change is going to trigger a redraw of the view.
    // When view is redrawn, we have appetizers in our array and that will populate.
    
    var body: some View {
        ZStack{
            NavigationView {
                List(viewModel.appetizers) { appetizer in
                    ApetizerListCell(appetizer: appetizer)
                }
                .navigationTitle(Text("Appetizers"))
            }
            .onAppear() {
                viewModel.getAppetizers()
            }
            if viewModel.isLoading {
                LoadingView()
            }
        }
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: alertItem.title,
                      message: alertItem.message,
                      dismissButton: alertItem.dismissButton)
            
        }
    }
    
}

#Preview {
    AppetizersListView()
}
