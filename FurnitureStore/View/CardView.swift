//
//  CardView.swift
//  FurnitureStrore
//
//  Created by Darya Zhitova on 26.07.2022.
//

import SwiftUI

struct CardView: View {
    
    var item: Model
    @State private var heartIsTaped: Bool = false
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text(item.title)
                .font(.system(.headline, design: .rounded))
                .foregroundColor(.accentColor)
            
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack {
                Text(item.price)
                    .font(.system(size: 15, weight: .semibold, design: .rounded))
                    .foregroundColor(.gray)
                
                Spacer()
                
                Image(systemName: heartIsTaped ? "heart.fill" : "heart")
                    .onTapGesture {
                        heartIsTaped = true
                    }
            }
        }
        .padding()
        .background(Color.white)
        .frame(width: 172, height: 230)
        .cornerRadius(20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(item: Model(title: "Gray chair", price: "₽1500", imageName: "GrayChair"))
    }
}
