//
//  WifiDetectorDetail.swift
//  MagneticTT
//
//  Created by Artur Ageev on 28.05.2024.
//

import Foundation
import SwiftUI

struct WifiDetectorDetail: View {
    
    var body: some View {
        makeUI()
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Result")
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                }
            }
    }
    
    private func makeUI() -> some View {
        GeometryReader { geo in
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(.all)
            }
        }
    }
}
