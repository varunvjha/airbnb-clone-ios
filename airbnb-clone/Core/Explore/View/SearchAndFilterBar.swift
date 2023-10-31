//
//  SearchAndFilterBar.swift
//  airbnb-clone
//
//  Created by Varun on 25/10/23.
//

import SwiftUI

struct SearchAndFilterBar: View {
    
    @Binding var location: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            VStack(alignment: .leading, spacing: 2) {
                Text(location.isEmpty ? "Where to?" : location)
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("\(location.isEmpty ? "Anywhere - " : "")Any Week - Add guests")
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            Button (action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "line.3.horizontal.decrease.circle").foregroundStyle(.black)
            })
        }.padding(.horizontal)
            .padding(.vertical, 10)
            .overlay {
                Capsule().stroke(lineWidth: 0.5)
                    .foregroundStyle(Color(.systemGray))
                    .shadow(color: .black.opacity(0.4), radius:2)
            }
    }
}

#Preview {
    SearchAndFilterBar(location: .constant("Los Angeles"))
}
