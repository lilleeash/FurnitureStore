//
//  DetailView.swift
//  FurnitureStrore
//
//  Created by Darya Zhitova on 26.07.2022.
//

import SwiftUI

struct DetailView: View {
    
    @State private var count = 0
    var item: Model
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()

                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)

                Spacer()
                
                detail()
                
            }
        }
        .ignoresSafeArea(.all)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("background"))
    }
    
    @ViewBuilder
    private func detail() -> some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(.white)
            
            VStack {
            
                HStack {
                    
                    VStack(alignment: .leading) {
                        
                        Text(item.title)
                            .font(.system(.title, design: .rounded))
                            .fontWeight(.bold)
                        
                        VStack(alignment: .leading) {
                            
                            Text("Size: 120/80/120")
                            
                            Text("Weight: 120/80/120")
                        }
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        
                    }
                    .frame(maxWidth: .infinity, maxHeight: 230, alignment: .topLeading)
                    .padding()
                    
                    Spacer()
                    
                    VStack {
                        HStack {
                            ForEach(1..<5) { item in
                                Image(systemName: "star.fill")
                            }
                            Image(systemName: "star")
                        }
                        Text("143 Reviews")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                            .padding(.top, 3)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 200, alignment: .topTrailing)
                    .padding()
                }
                
                HStack {
                    Text(item.price)
                        .font(.system(.title2, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .overlay { RoundedRectangle(cornerRadius: 10).stroke(.gray, lineWidth: 2) }
                            .foregroundColor(.clear)
                        HStack {
                            
                            Button {
                                count -= 0
                            } label: {
                                Text("-")
                            }
                            
                            Spacer()
                            
                            Text(String(count))
                            
                            Spacer()
                            
                            Button {
                                count += 1
                            } label: {
                                Text("+")
                            }

                        }
                        .font(.title3)
                        .foregroundColor(.gray)
                        .padding([.leading, .trailing])
                    }
                    .padding(15)
                    
                    Button {
                        print("Added to your cart")
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.accentColor)
                            Text("Cart")
                                .foregroundColor(.white)
                        }
                        .padding(10)
                    }

                }
                .frame(maxWidth: .infinity, maxHeight: 60)
                .padding([.leading, .trailing, .bottom])
            }
        }
        .frame(height: 230)
        
    }
    
    
    
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(item:  Model(title: "Begie chair", price: "₽7000", imageName: "BegieChair"))
    }
}


struct CustomShape : Shape {
    
    var corner : UIRectCorner
    var radii : CGFloat
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: radii, height: radii))
        
        return Path(path.cgPath)
    }
}
