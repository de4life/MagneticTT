//
//  WifiDetectorDetail.swift
//  MagneticTT
//
//  Created by Artur Ageev on 28.05.2024.
//

import SwiftUI

struct WifiDetectorDetail: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    let onBackToMain: () -> Void
    let randomData: Int
    let wifiNames = ["Network_1", "Network_2", "Network_3", "Network_4", "Network_5", "Network_6", "Network_7", "Network_8", "Network_9", "Network_10", "Network_11", "Network_12", "Network_13", "Network_14", "Network_15", "Network_16", "Network_17", "Network_18", "Network_19", "Network_20", "Network_21", "Network_22", "Network_23", "Network_24"]

    var body: some View {
        NavigationView {
            makeUI()
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            onBackToMain()
                        }) {
                            Image(systemName: "chevron.left")
                                .foregroundColor(Color(red: 0.427, green: 0.349, blue: 0.827))
                        }
                    }
                    ToolbarItem(placement: .principal) {
                        Text("Result")
                            .font(
                                Font.custom("Roboto", size: 17)
                                    .weight(.bold)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                    }
                }
        }
        .navigationBarBackButtonHidden(true)
    }
    
    private func makeUI() -> some View {
        GeometryReader { geo in
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    (Text("\(randomData)")
                        .foregroundColor(Color(red: 0.427, green: 0.349, blue: 0.827))
                        .font(
                            Font.custom("Roboto", size: 28)
                                .weight(.bold)
                        )
                    + Text("  Devices")
                        .foregroundColor(.white)
                        .font(
                            Font.custom("Roboto", size: 28)
                                .weight(.bold)
                        ))
                    .padding(.top, 10)
                    Text("WIFI_Name")
                        .foregroundColor(Color(red: 0.322, green: 0.345, blue: 0.471))
                        .font(
                            Font.custom("Roboto", size: 15)
                                .weight(.regular)
                        )
                        .padding(.top, 5)
                    
                    List {
                        ForEach(0..<randomData, id: \.self) { index in
                            NavigationLink(destination: DeviceDetail(wifiName: wifiNames.randomElement()!, ipAddress: randomIPAddress(), wifiIcon: index % 2 == 0 ? "viewwifion" : "viewwifino")) {
                                DeviceCell(wifiName: wifiNames.randomElement()!, ipAddress: randomIPAddress(), wifiIcon: index % 2 == 0 ? "wifion" : "wifino")
                                    .padding(.leading, 30)
                                    .padding(.trailing, 15)
                                    
                            }
                            .listRowBackground(Color.black)
                            .listRowInsets(EdgeInsets())
                            .padding(.horizontal, -16)
                        }
                    }
                    .listStyle(PlainListStyle())
                    .background(Color.black)
                }
            }
        }
    }
    
    private func randomIPAddress() -> String {
        let octets = (0..<4).map { _ in String(Int.random(in: 0...255)) }
        return octets.joined(separator: ".")
    }
}
