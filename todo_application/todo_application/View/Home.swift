//
//  Home.swift
//  todo_application
//
//  Created by student on 12/08/24.
//

import SwiftUI

struct Home: View {
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("Order From The Best Of **Shops**")
                        .font(.system(size: 36))
                        .padding(.trailing)
                    
                    
                    Spacer()
                    Image(systemName: "line.3.horizontal")
                        .imageScale(.large)
                        .padding()
                        .frame(width: 70, height: 90)
                        .overlay(RoundedRectangle(cornerRadius: 50).stroke().opacity(0.5))
                }
            }
            .padding(25)
            
            CategoryListView
            CategoryPostHeading
            ProductCards
        }
    }
    
    @State var selectedPill: String = "All"
    
    var ProductCards: some View {
        HStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(Products, id: \.id) { item in
                        VStack {
                            HStack {
                                Text(item.name)
                                    .font(.system(size: 30, weight: .semibold))
                                    .padding(
                                        EdgeInsets(top: 25, leading: 30, bottom: 0, trailing: 25)
                                    )
                                
                                
                                Spacer()
                            }
                            
                            HStack {
                                ForEach(item.category, id: \.self) { group in
                                    HStack {
                                        Text(group)
                                            .padding()
                                    }
                                    .background(.white.opacity(0.5))
                                    .cornerRadius(20)
                                }
                                Spacer()
                            }.padding(
                                EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30)
                            )
                            
                            Spacer()
                            
                            HStack {
                                Text("$\(item.price).0")
                                    .font(.system(size: 20, weight: .semibold))
                                    .padding(
                                        EdgeInsets(top: 25, leading: 25, bottom: 25, trailing: 25)
                                    )
                                Spacer()
                                
                                Image(systemName: "cart.fill")
                                    .padding(
                                        EdgeInsets(top: 25, leading: 25, bottom: 25, trailing: 25)
                                    )
                                    .background(.white)
                                    .cornerRadius(30)
                            }
                            .background(.white.opacity(0.45))
                            .cornerRadius(30)
                            .padding(EdgeInsets(top: 0, leading: 25, bottom: 40, trailing: 25))
                            .frame(maxWidth: .infinity)
                            .frame(height: 80)
                            
                        }
                        .frame(
                            width: 335,
                            height: 400
                        )
                        .background(Color(item.color).opacity(0.5))
                        .cornerRadius(40)
                        
                    }
                }
            }
        }.padding(
            EdgeInsets(top: 0, leading: 25, bottom: 0, trailing: 25)
        )
    }
    
    var CategoryListView: some View {
        HStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(categoryList, id: \.id) { item in
                        Button {
                            selectedPill = item.title
                        } label: {
                            HStack {
                                if item.icon != "" {
                                    Image(systemName: item.icon).foregroundColor(Color.black)
                                }
                                Text(item.title)
                                    .foregroundStyle(.black)
                            }
                            .padding()
                            .background(selectedPill == item.title ? Color("YellowLight") : .gray.opacity(0.1))
                            .cornerRadius(50)
                        }
                        
                    }
                }
            }.padding(25)
        }
    }
    
    var CategoryPostHeading: some View {
        HStack {
            Text("**\(selectedPill)** Collection").font(.system(size: 25))
            Spacer()
            Image(systemName: "arrow.right").imageScale(.large)
                .frame(width: 90, height: 20)
        }
        .padding(EdgeInsets(top: 0, leading: 30, bottom: 25, trailing: 0))
    }
    
    
}

#Preview {
    Home()
}
