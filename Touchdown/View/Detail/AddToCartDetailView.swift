//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Gaurav Bhasin on 3/3/21.
//

import SwiftUI

struct AddToCartDetailView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    let product: Product
    
    // MARK: - BODY
    
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }) {
            Spacer()
            Text("Add To Cart".uppercased())
                .font(.system(.title2, design:.rounded))
                .bold()
                .foregroundColor(.white)
            Spacer()
        } //: BUTTON
        .padding(15)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            )
        )
        .clipShape(Capsule())
    }
}

// MARK: - PREVIEW

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView(product: products[0])
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
