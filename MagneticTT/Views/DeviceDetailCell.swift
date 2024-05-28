//
//  DeviceDetailCell.swift
//  MagneticTT
//
//  Created by Artur Ageev on 28.05.2024.
//

import Foundation
import SwiftUI

struct DeviceDetail: View {
    
    let wifiName: String
    let ipAddress: String
    let wifiIcon: String
    let connectionTypes = ["Wi-Fi", "Ethernet", "Bluetooth"]
    let hostnames = ["gwpc-21141234.local", "device123.local", "router-5678.local"]
        
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Color.black
                    .ignoresSafeArea(.all)
                
                VStack {
                    ZStack {
                        Image(uiImage: UIImage(named: wifiIcon)!)
                            .resizable()
                            .frame(width: 390, height: 329)
                            .offset(y: -80)
                        
                    }
                    Spacer()
                }
                VStack {
                    VStack(spacing: 10) {
                        Text(wifiName)
                            .foregroundColor(Color(red: 0.427, green: 0.349, blue: 0.827))
                            .font(
                                Font.custom("Roboto", size: 28)
                                    .weight(.bold)
                            )
                            .shadow(color: Color(red: 0.109, green: 0.349, blue: 0.827, opacity: 0.8), radius: 5, x: 0, y: 0)
                        
                        Text(ipAddress)
                            .foregroundColor(.white)
                            .font(
                                Font.custom("Roboto", size: 15)
                                    .weight(.regular)
                            )
                        Spacer()
                    }
                    .padding(.top, 20)
                    
                    VStack(spacing: 10) {
                        HStack {
                            Text("Connection Type")
                                .foregroundColor(.white)
                                .font(Font.custom("Roboto", size: 17).weight(.regular))
                            Spacer()
                            Text("Wi-Fi")
                                .foregroundColor(Color(red: 0.322, green: 0.345, blue: 0.471))
                                .font(Font.custom("Roboto", size: 17).weight(.regular))
                        }
                        .padding(.horizontal, 10)
                        Divider().background(Color.white.opacity(0.5))
                        HStack {
                            Text("IP Address")
                                .foregroundColor(.white)
                                .font(Font.custom("Roboto", size: 17).weight(.regular))
                            Spacer()
                            Text(ipAddress)
                                .foregroundColor(Color(red: 0.322, green: 0.345, blue: 0.471))
                                .font(Font.custom("Roboto", size: 17).weight(.regular))

                        }
                        .padding(.horizontal, 10)
                        Divider().background(Color.white.opacity(0.5))
                        HStack {
                            Text("MAC Address")
                                .foregroundColor(.white)
                                .font(Font.custom("Roboto", size: 17).weight(.regular))
                            Spacer()
                            Text("Not Available")
                                .foregroundColor(Color(red: 0.322, green: 0.345, blue: 0.471))
                                .font(Font.custom("Roboto", size: 17).weight(.regular))
                        }
                        .padding(.horizontal, 10)
                        Divider().background(Color.white.opacity(0.5))
                        HStack {
                            Text("Hostname")
                                .foregroundColor(.white)
                                .font(Font.custom("Roboto", size: 17).weight(.regular))
                            Spacer()
                            Text("gwpc-21141234.local")
                                .foregroundColor(Color(red: 0.322, green: 0.345, blue: 0.471))
                                .font(Font.custom("Roboto", size: 17).weight(.regular))
                        }
                        .padding(.horizontal, 10)
                    }
                }
                .frame(width: 350, height: 294)
                .padding(.vertical, 20)
                .padding(.horizontal, 15)
                .background(Color(red: 0.063, green: 0.051, blue: 0.173))
                .cornerRadius(8)

                
            }
        }
        .navigationBarTitle("Device Detail", displayMode: .inline)
    }
}
