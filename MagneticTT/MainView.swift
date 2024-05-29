//
//  MainView.swift
//  MagneticTT
//
//  Created by Artur Ageev on 27.05.2024.
//

import SwiftUI

struct MainView: View {
    
    @State private var isMagneticViewActive = false
    @State private var isWifiDetectorActive = false
    @State private var isWifiDetectorDetailActive = false
    @State private var randomData: Int = 0

    var body: some View {
            NavigationView {
                VStack {
                    if isWifiDetectorDetailActive {
                        WifiDetectorDetail(onBackToMain: {
                            isWifiDetectorDetailActive = false
                            isWifiDetectorActive = false
                        }, randomData: randomData)
                    } else if isWifiDetectorActive {
                        WifiDetector(onStop: { randomData in
                            self.randomData = randomData
                            self.isWifiDetectorDetailActive = true
                        })
                    } else {
                        mainScreenUI()
                    }
                }
                .navigationBarTitle("")
                .navigationBarHidden(true)
                .background(EmptyView())
            }
        }
    
    private func mainScreenUI() -> some View {
        GeometryReader { geo in
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    ZStack {
                        Image("mainviewhome")
                            .resizable()
                            .frame(width: 390, height: 329)
                            .offset(y: -30)
                        
                        VStack {
                            HStack {
                                Spacer()
                                Image("filter")
                                    .padding(.trailing, 20)
                                    .padding(.top, 65)
                            }
                            Spacer()
                        }
                        .frame(width: 390, height: 329)
                        .offset(y: -30)
                    }
                    
                    Spacer()
                }
               
                VStack {
                    Spacer()
                    Rectangle()
                        .foregroundColor(Color(red: 0.063, green: 0.051, blue: 0.173))
                        .frame(width: 350, height: 198)
                        .overlay(
                            VStack(spacing: 10) {
                                Text("Current Wi-Fi")
                                    .font(
                                        Font.custom("Roboto", size: 15)
                                            .weight(.regular)
                                    )
                                    .foregroundColor(.white)
                                
                                Text("WIFI_Name")
                                    .font(
                                        Font.custom("Roboto", size: 28)
                                            .weight(.bold)
                                    )
                                    .foregroundColor(Color(red: 0.427, green: 0.349, blue: 0.827))
                                    .shadow(color: Color(red: 0.109, green: 0.349, blue: 0.827, opacity: 0.8), radius: 5, x: 0, y: 0)
                                
                                Text("Ready to Scan this network")
                                    .font(
                                        Font.custom("Roboto", size: 17)
                                            .weight(.regular)
                                    )
                                    .foregroundColor(Color(red: 0.322, green: 0.345, blue: 0.471))
                                
                                Button(action: {
                                    isWifiDetectorActive = true
                                }) {
                                    Text("Scan current network")
                                        .font(
                                            Font.custom("Roboto", size: 20)
                                                .weight(.medium)
                                        )
                                        .frame(width: 312, height: 50)
                                        .background(Color(red: 0.427, green: 0.349, blue: 0.827))
                                        .foregroundColor(.white)
                                        .cornerRadius(8)
                                }
                            }
                        )
                    
                    
                    HStack(spacing: 40) {
                        VStack {
                            Button(action: {
                                
                            }) {
                                VStack {
                                    Image("camera")
                                    Text("Infrared Detections")
                                        .font(
                                            Font.custom("Roboto", size: 17)
                                                .weight(.medium)
                                        )
                                        .multilineTextAlignment(.center)
                                        
                                }
                            }
                            .frame(width: 140, height: 140)
                            .background(Color(red: 0.137, green: 0.09, blue: 0.373))
                            .foregroundColor(.white)
                            .cornerRadius(8)
                            
                            VStack {
                                NavigationLink(destination: MagneticView()) {
                                    VStack {
                                        Image("magnetic")
                                        Text("Magnetic Detection")
                                            .font(
                                                Font.custom("Roboto", size: 17)
                                                    .weight(.medium)
                                            )
                                    }
                                }
                                .buttonStyle(PlainButtonStyle())

                                .frame(width: 140, height: 140)
                                .background(Color(red: 0.137, green: 0.09, blue: 0.373))
                                .foregroundColor(.white)
                                .cornerRadius(8)
                            }
                        }
                        
                        VStack {
                            Button(action: {
                                
                            }) {
                                VStack {
                                    Image("bluet")
                                    Text("Bluetooth Detection")
                                        .font(
                                            Font.custom("Roboto", size: 17)
                                                .weight(.medium)
                                        )
                                    
                                }
                            }
                            .frame(width: 140, height: 140)
                            .background(Color(red: 0.137, green: 0.09, blue: 0.373))
                            .foregroundColor(.white)
                            .cornerRadius(8)
                            
                            Button(action: {
                                
                            }) {
                                VStack {
                                    Image("tips")
                                    Text("Antispy Tips")
                                        .font(
                                            Font.custom("Roboto", size: 17)
                                                .weight(.medium)
                                        )
                                }
                            }
                            .frame(width: 140, height: 140)
                            .background(Color(red: 0.137, green: 0.09, blue: 0.373))
                            .foregroundColor(.white)
                            .cornerRadius(8)
                        }
                    }
                }
                .padding(.bottom, 30)
            }
        }
    }
}

