//
//  ApetizerListCell.swift
//  Appetizers
//
//  Created by Mehmet Güngörmüş on 15.07.25.
//

import SwiftUI

struct ApetizerListCell: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        HStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 90)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5){
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                    
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
                    
            }
            .padding(.leading)
        }
    }
}

#Preview {
    ApetizerListCell(appetizer: MockData.sampleApetizer)
}
