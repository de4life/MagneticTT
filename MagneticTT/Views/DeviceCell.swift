//
//  DeviceCell.swift
//  MagneticTT
//
//  Created by Artur Ageev on 28.05.2024.
//

import Foundation
import SwiftUI

struct DeviceCell: View {
    let wifiName: String
    let ipAddress: String
    let wifiIcon: String

    var body: some View {
        HStack {
            Image(uiImage: UIImage(named: wifiIcon)!)
                .foregroundColor(.white)
                .padding()
                .background(Color(red: 0.063, green: 0.051, blue: 0.173))
                .cornerRadius(10)

            VStack(alignment: .leading) {
                Text(wifiName)
                    .foregroundColor(.white)
                    .font(
                        Font.custom("Roboto", size: 17)
                            .weight(.medium)
                    )
                Text(ipAddress)
                    .foregroundColor(.gray)
                    .font(
                        Font.custom("Roboto", size: 13)
                            .weight(.medium)
                    )
            }
            .padding(.leading, 10)

            Spacer()

            Image(systemName: "chevron.right")
                .foregroundColor(.white)
                .padding()
        }
        .padding()
        .background(Color(red: 0.063, green: 0.051, blue: 0.173))
//        .cornerRadius(10)
    }
}
