//
//  WifiDetector.swift
//  MagneticTT
//
//  Created by Artur Ageev on 28.05.2024.
//

import SwiftUI

struct WifiDetector: View {
    @State private var progress: CGFloat = 0
    @State private var randomData: Int = 0
    let maxProgress: CGFloat = 100
    let onStop: (Int) -> Void

    var body: some View {
        makeUI()
            .onAppear {
                startTimer()
                generateRandomData()
            }
            .navigationBarHidden(true)
    }
    
    private func makeUI() -> some View {
        GeometryReader { geo in
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Text("Scanning Your Wi-Fi")
                        .foregroundColor(.white)
                        .padding(.top, geo.size.height * 0.1)
                    
                    Text("TLind_246_lp")
                        .foregroundColor(Color(red: 0.427, green: 0.349, blue: 0.827))
                        .padding(.top, 10)
                    
                    Spacer()
                }
                
                VStack {
                    LottieView(lottieFile: "animationHS6")
                        .frame(width: 350, height: 348)
                        .overlay(
                            Text("\(Int(progress))%")
                                .foregroundColor(.white)
                                .font(.headline)
                                .padding()
                                .transition(.opacity)
                        )
                    (Text("\(randomData)")
                        .foregroundColor(Color(red: 0.427, green: 0.349, blue: 0.827))
                        .font(
                            Font.custom("Roboto", size: 28)
                                .weight(.bold)
                        )
                        
                    + Text("  Devices Found...")
                        .foregroundColor(.white)
                        .font(
                            Font.custom("Roboto", size: 17)
                                .weight(.medium)
                        ))
                    
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                VStack {
                    Spacer()
                    
                    Button(action: {
                        onStop(randomData)
                    }) {
                        Text("Stop")
                            .font(.headline)
                            .frame(width: 350, height: 50)
                            .foregroundColor(.white)
                            .background(Color(red: 0.427, green: 0.349, blue: 0.827))
                            .cornerRadius(32)
                    }
                    .padding(.bottom, 20)
                }
            }
        }
    }

    private func startTimer() {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            if progress < maxProgress {
                progress += 20
            } else {
                timer.invalidate()
            }
        }
    }
    
    private func generateRandomData() {
        randomData = Int.random(in: 1...24)
    }
}
