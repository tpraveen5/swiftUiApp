//
//  DetailView.swift
//  BaseSwiftUI
//
//  Created by Praveen Talari on 29/10/24.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
     //   NavigationView {
        VStack {
            
            HStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    Text("< Back")
                    //.padding()
                    //                        .background(Color.blue)
                        .foregroundColor(.black)
                        .cornerRadius(8)
                }
                // .padding()
                Spacer()
            }
            .padding(.leading, 10)
            Spacer()
            
            
            Text("Subscribe for the revolution!!")
                .frame(height: 50)
            
            // Rotating wheel section
            RotatingWheelViewNonStop()
                .padding(.top, 30)
                .padding(.bottom, 30)
            ScrollView(.horizontal){
                HStack {
                    Text("Test 1")
                    Spacer()
                    Text("Test 2")
                    Spacer()
                    Text("Test 3")
                    Spacer()
                    Text("Test 4")
                    Spacer()
                    Text("Test 5")
                    Spacer()
                    Text("Test 6")
                    Spacer()
                    Text("Test 8")
                    //                    RoundedRectangle(
                    //                        cornerRadius: 8
                    //                    )
                    //                    .clipShape(Circle())
                }
            }
               // .frame(height: 50)
                .padding(10)
                .background(
                    RoundedRectangle(cornerRadius: 10) // Rounded rectangle with corner radius
                        .fill(Color.white) // Fill color
                        .shadow(radius: 5) // Optional shadow
                )
                Spacer()
                Spacer()
                
                Text("Subscribe for the revolution!!")
                Button("Subscribe for the revolution!!") {
                    print("Sttaus")
                }
            }
            .padding()
            .navigationBarHidden(true)
      //  }
    }
}

struct RotatingWheelView: View {
    @State private var rotationAngle: Double = 0

    var body: some View {
        VStack {
            Image(systemName: "gear") // Replace with your wheel image
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .rotationEffect(.degrees(rotationAngle)) // Apply rotation effect
                .animation(.easeInOut(duration: 1), value: rotationAngle) // Animate rotation

            Button(action: {
                rotationAngle += 360 // Increase rotation angle by 360 degrees
            }) {
                Text("Rotate Wheel")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding(.top, 20)
        }
    }
}

struct RotatingWheelViewNonStop: View {
    @State private var rotationAngle: Double = 0
    @State private var isRotating: Bool = false
    @State private var rotationTimer: Timer? = nil

    var body: some View {
        VStack {
            Image(systemName: "gear") // Replace with your wheel image
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 200)
                .rotationEffect(.degrees(rotationAngle)) // Apply rotation effect

            Button(action: {
                if isRotating {
                    // Stop rotating
                    rotationTimer?.invalidate()
                    rotationTimer = nil
                    isRotating = false
                } else {
                    // Start rotating
                    startRotation()
                    isRotating = true
                }
            }) {
                Text(isRotating ? "Stop Wheel" : "Start Rotating")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding(.top, 20)
        }
    }

    // Start the continuous rotation using a Timer
    private func startRotation() {
        rotationTimer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { _ in
            rotationAngle += 1 // Increment the rotation angle by 1 degree
        }
    }
}






#Preview {
    DetailView()
}
