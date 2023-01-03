//
//  MainView.swift
//  FurnitureStrore
//
//  Created by Darya Zhitova on 26.07.2022.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchTF = ""
    @State var show = false
    
    var animation: Namespace.ID

    
    var body: some View {

        
        NavigationView {
            
            ScrollView {
                
                header()
                
                Text("Chairs")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(Model.chairs) { item in
                            NavigationLink {
                                DetailView(show: $show, animation: animation, item: item)
                            } label: {
                                CardView(item: item, animation: animation)
                            }
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    show.toggle()
                                }
                            }
                        }
                    }
                    .padding(.leading)
                    
                }
                
                Text("Sofas")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(Model.sofas) { item in
                            NavigationLink {
                                DetailView(show: $show, animation: animation, item: item)
                            } label: {
                                CardView(item: item, animation: animation)
                            }
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    show.toggle()
                                }
                            }
                        }
                    }
                    .padding(.leading)
                }
                
            }
            .background(Color("background"))
            .navigationBarHidden(true)
        }
    }
    
    
    @ViewBuilder
    private func header() -> some View {
        VStack(spacing: 18) {
            
            HStack {
                
                // TextField
                
                HStack {
                    Image(systemName: "magnifyingglass")
                    TextField("Search...", text: $searchTF)
                }
                .padding(10)
                .background(Color.white)
                .cornerRadius(10)
                
                // Button
                
                Button {
                    print("Filter")
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 40, height: 40)
                            .foregroundColor(.white)
                        Image(systemName: "slider.horizontal.3")
                    }
                }
                
                
            }
            
            
        }.padding()
    }
}

//struct MainView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainView(animation: animation)
//    }
//}
