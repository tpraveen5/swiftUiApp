//
//  ContentView.swift
//  BaseSwiftUI
//
//  Created by Praveen Talari on 29/10/24.
//

import SwiftUI

struct ContentView: View {
    let items = ["Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that do not yet have content", "Item 2", "Item 3", "Item 4", "Item 5", "Item 4", "Item 4", "Item 4", "Item 4", "Item 4", "Item 4", "Item 4"]
    var body: some View {
        NavigationView {
            ZStack {
                Image("test34")
                    .resizable()
                // .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .ignoresSafeArea()
                VStack {
                    HStack {
                        NavigationLink(destination: DetailView()) {
                            Text("Click Extensions")
                                .padding()
                                .background(Color.green.opacity(0.1))
                                .cornerRadius(8)
                                .foregroundColor(.black)
                                .shadow(radius: 5)
                        }
                        .padding(.leading, 20)
                        
                        Spacer()
                    }
                    .padding(.top, 60)
                    
                    List {
                        ForEach(items, id: \.self) { item in
                            Text(item)
                                .padding()
                                .background(Color.white.opacity(0.8))
                                .cornerRadius(8)
                                .shadow(radius: 2)
                                .padding(.horizontal)
                                .listRowBackground(Color.clear)
                                .listRowInsets(EdgeInsets())
                        }
                    }
                    .background(Color.clear)
                    .listRowSpacing(30)
                    .scrollContentBackground(.hidden)
                    Spacer()
                }
                
            }
        }
    }
}


#Preview {
    ContentView()
}


//struct ContentView: View {
//    let items = ["Item 1", "Item 2", "Item 3"] // Example data
//    
//    var body: some View {
//        NavigationView {
//            ZStack {
//                Image("test34")
//                    .resizable()
//                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
//                    .ignoresSafeArea()
//                
//                VStack {
//                    HStack {
//                        NavigationLink(destination: DetailView()) {
//                            Text("Click Extensions")
//                                .padding()
//                                .background(Color.green.opacity(0.1))
//                                .cornerRadius(8)
//                                .foregroundColor(.black)
//                                .shadow(radius: 5)
//                        }
//                        .padding(.leading, 20)
//                        Spacer()
//                    }
//                    .padding(.top, 60)
//                    
//                    List {
//                        ForEach(items, id: \.self) { item in
//                            Text(item)
//                                .padding()
//                                .background(Color.white.opacity(0.8))
//                                .cornerRadius(8)
//                                .shadow(radius: 2)
//                                .padding(.horizontal)
//                                .listRowBackground(Color.clear)
//                                .listRowInsets(EdgeInsets())
//                        }
//                    }
//                    .background(Color.clear)
//                    .listRowSpacing(30)
//                    .scrollContentBackground(.hidden)
//                    
//                    Spacer()
//                }
//                
//            }
//   
//            .navigationBarHidden(true) // Hide nav bar if needed
//        }
//    }
//}
