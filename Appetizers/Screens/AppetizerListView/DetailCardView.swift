//
//  DetailCardView.swift
//  Appetizers
//
//  Created by Mehmet Güngörmüş on 17.07.25.
//

import SwiftUI

struct DetailCardView: View {
    var body: some View {
        
        VStack {
            Image("food-placeholder")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .infinity, height: 200)
                
                
            
                
            Label("Chicken Wings", systemImage: "")
                .padding(5)
            
            Text("Some text about the chicken wings")
            
            HStack {
                VStack {
                    Text("Calories")
                    
                    Text("700")
                        
                }
                VStack {
                    Text("Carbs")
                    
                    Text("11 g")
                        
                }
                VStack {
                    Text("Protein")
                    
                    Text("13 g")
                        
                }
            }.padding()
                
            Button{} label: {
                Text("$11.49 - Add to order")
                    .bold()
            }
            .frame(width: 250, height: 50)
            .background(.brandPrimary)
            .foregroundStyle(.white)
            .cornerRadius(10)
            .padding()
        }
        .frame(width: 300, height: 450)
        .cornerRadius(20)
        
        .background(Color(.systemBackground))
    }
        
        
        
}

#Preview {
    DetailCardView()
}
