//
//  MainView.swift
//  MagneticTT
//
//  Created by Artur Ageev on 27.05.2024.
//

import SwiftUI

struct MainView: View {
    @State private var isMagneticViewActive = false
    
    var body: some View {
        NavigationView { 
            mainScreenUI()
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
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                                
                                Text("WIFI_Name")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                
                                Text("Ready to Scan this network")
                                    .font(.body)
                                    .foregroundColor(.white)
                                
                                Button(action: {
                                    // Действие при нажатии кнопки
                                }) {
                                    Text("Scan current network")
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
                                // Действие при нажатии кнопки
                            }) {
                                VStack {
                                    Image("camera")
                                    Text("Infrared Detection")
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
                                // Действие при нажатии кнопки
                            }) {
                                VStack {
                                    Image("bluet")
                                    Text("Bluetooth Detection")
                                }
                            }
                            .frame(width: 140, height: 140)
                            .background(Color(red: 0.137, green: 0.09, blue: 0.373))
                            .foregroundColor(.white)
                            .cornerRadius(8)
                            
                            Button(action: {
                                // Действие при нажатии кнопки
                            }) {
                                VStack {
                                    Image("tips")
                                    Text("Antispy Tips")
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

