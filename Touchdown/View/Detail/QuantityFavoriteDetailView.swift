//
//  QuantityFavoriteDetailView.swift
//  Touchdown
//
//  Created by Gaurav Bhasin on 3/3/21.
//

import SwiftUI

struct QuantityFavoriteDetailView: View {
    // MARK: - PROPERTIES
    
    @State private var counter = 0
    @State private var love = false
    
    // MARK: - BODY
    
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button(action: {
                if counter > 0 {
                    feedback.impactOccurred()
                    counter -= 1
                }
            }) {
                Image(systemName: "minus.circle")
            }
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                feedback.impactOccurred()
                counter += 1
            }) {
                Image(systemName: "plus.circle")
            }
            
            Spacer()
            
            Button(action: {
                feedback.impactOccurred()
                love.toggle()
            }) {
                Image(systemName: "heart.circle")
                    .foregroundColor(love ? .pink : .gray)
            }
        } //: HSTACK
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

// MARK: - PREVIEW

struct QuantityFavoriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavoriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
