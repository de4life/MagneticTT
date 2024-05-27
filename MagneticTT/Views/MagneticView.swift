//
//  MagneticView.swift
//  MagneticTT
//
//  Created by Artur Ageev on 27.05.2024.
//

import SwiftUI

struct MagneticView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        createViewUI()
            
            .toolbar {
                
                
                ToolbarItem(placement: .principal) {
                    Text("Magnetic Detection")
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
                    Spacer()
                    
                    
                }
            }
        }
    }
}
