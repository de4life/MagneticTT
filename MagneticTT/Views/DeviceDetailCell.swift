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
    let connectionType: String
    let macAddress: String
    let hostname: String
    
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
                    Rectangle()
                        .foregroundColor(Color(red: 0.063, green: 0.051, blue: 0.173))
                        .frame(width: 350, height: 294)
                        .cornerRadius(8)
                        .overlay(
                            VStack(spacing: 10) {
                                Text(wifiName)
                                    .foregroundColor(Color(red: 0.427, green: 0.349, blue: 0.827))
                                    .font(
                                        Font.custom("Roboto", size: 28)
                                            .weight(.bold)
                                    )
                                
                                Text(ipAddress)
                                    .foregroundColor(.white)
                                    .font(
                                        Font.custom("Roboto", size: 15)
                                            .weight(.regular)
                                    )
                                Spacer()
                                
                                
                            }
                            .padding(.top, 20)
                            
                        )
                }
                .padding(.bottom, 30)
                
            }
        }
        .navigationBarTitle("Device Detail", displayMode: .inline)
    }
}
