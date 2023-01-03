//
//  MainView.swift
//  Furniture
//
//  Created by Darya Zhitova on 01.08.2022.
//

import SwiftUI

struct MainView: View {
    
    @State private var text = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                header()
            }
        }
    }
    
    @ViewBuilder
    private func header() -> some View {
        
        VStack(spacing: 18) {
            
            // TextField
            HStack {
                
                HStack {
                    Image(systemName: "magnifyingglass")
                    
                    TextField("Search...", text: $text)
                }
                .padding(10)
                .background(Color.white)
                .cornerRadius(10)
                
                // Button
                
                Button {
                    print("filter")
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 40, height: 40)
                            .foregroundColor(.white)
                        Image(systemName: "slider.horizontal.3")
                    }
                }
            }

        }
        .padding()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
