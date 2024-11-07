//
//  ContentView.swift
//  BaseSwiftUI
//
//  Created by Praveen Talari on 29/10/24.
//

import SwiftUI

struct ContentView: View {
    let items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]
    var body: some View {
        ZStack {
            Image("test34")
                .resizable()
               // .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .ignoresSafeArea()
            VStack {
                 HStack {
                    Button(action: {
                        print("Click Extensions button tapped")
                    }) {
                        Text("Click Extensions")
                            .padding()
                            .background(Color.green.opacity(0.1))
                            .cornerRadius(8)
                            .foregroundColor(.black)
                            .shadow(radius: 5)
                    }
                    .padding(.leading, 20) // Space from the left edge
                    Spacer()
                }
                .padding(.top, 60)
                Spacer()
                
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
                .background(Color.clear) // Remove list background
                .listStyle(InsetGroupedListStyle()) // InsetGrouped style sometimes hides separators better
                .scrollContentBackground(.hidden) // Hide default background (iOS 16+)
                
                Spacer()
            }

        }
    }
}


#Preview {
    ContentView()
}
