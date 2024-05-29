//
//  MagneticView.swift
//  MagneticTT
//
//  Created by Artur Ageev on 27.05.2024.
//

import SwiftUI

struct MagneticView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var isArrowMoving = false
    @State private var searchText = "Search checking"
    @State private var buttonText = "Search"
    @State private var timer: Timer?
    @State private var currentRotation: Double = 0

    var body: some View {
        createViewUI()
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Magnetic Detection")
                        .font(
                            Font.custom("Roboto", size: 17)
                                .weight(.bold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                }
            }
    }

    private func createViewUI() -> some View {
        GeometryReader { geo in
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(.all)

                VStack {
                    ZStack {
                        Image("magneticview")
                            .resizable()
                            .frame(width: 390, height: 329)
                            .offset(y: -30)
                    }

                    VStack {
                        SpeedometerView(isArrowMoving: $isArrowMoving, currentRotation: $currentRotation)
                            .offset(y: -30)
                    }
                    VStack {
                        Text(searchText)
                            .font(
                                Font.custom("Roboto", size: 17)
                                    .weight(.medium)
                            )
                            .foregroundColor(.white)
                    }
                    Spacer()
                    Button(action: {
                        isArrowMoving.toggle()
                        if isArrowMoving {
                            startSearch()
                        } else {
                            stopSearch()
                        }
                    }) {
                        Text(buttonText)
                            .font(
                                Font.custom("Roboto", size: 20)
                                    .weight(.medium)
                            )

                            .frame(width: 350, height: 50)
                            .background(Color(red: 0.427, green: 0.349, blue: 0.827))
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    Spacer()
                }
            }
        }
    }

    private func startSearch() {
        buttonText = "Stop"
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
            let value = Int.random(in: 1...100)
            searchText = "\(value) µT"
            currentRotation = Double(value) / 100 * 180
        }
    }

    private func stopSearch() {
        buttonText = "Search"
        timer?.invalidate()
        timer = nil
    }
}
