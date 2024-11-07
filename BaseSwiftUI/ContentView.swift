//
//  ContentView.swift
//  BaseSwiftUI
//
//  Created by Praveen Talari on 29/10/24.
//

import SwiftUI

struct ContentView: View {
    let items = ["Lorem ipsum is a dummy or placeholder text commonly used in graphic design, publishing, and web development to fill empty spaces in a layout that do not yet have content", "Item 2", "Item 3", "Item 4"]
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
                .background(Color.clear)
                .listRowSpacing(30)
                .scrollContentBackground(.hidden)
                Spacer()
            }

        }
    }
}


#Preview {
    ContentView()
}
