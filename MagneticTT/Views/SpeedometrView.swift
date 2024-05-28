//
//  SpeedometrView.swift
//  MagneticTT
//
//  Created by Artur Ageev on 28.05.2024.
//

import Foundation
import SwiftUI

struct SpeedometerView: View {
    @Binding var isArrowMoving: Bool
    @Binding var currentRotation: Double
    @State private var arrowRotation: Double = 0

    var body: some View {
        ZStack {
            Image("speedgroup")
                .resizable()
                .scaledToFit()
                .frame(width: 350, height: 180)

            ZStack {
                Image("circlepart")
                    .resizable()
                    .frame(width: 32, height: 32)

                Image("arrowpart")
                    .resizable()
                    .frame(width: 80, height: 7)
                    .padding(.trailing, 80)
                    .rotationEffect(.degrees(arrowRotation), anchor: .center)
            }
            .offset(y: 65)
            .onChange(of: currentRotation) { _ in
                arrowRotation = currentRotation
            }
            .onAppear {
                arrowRotation = currentRotation
            }
        }
        .onAppear {
            startArrowAnimation()
        }
        .onChange(of: isArrowMoving) { newValue in
            if newValue {
                startArrowAnimation()
            } else {
                stopArrowAnimation()
            }
        }
    }

    private func startArrowAnimation() {
        withAnimation(Animation.linear(duration: 2)) {
            arrowRotation = currentRotation
        }
    }

    private func stopArrowAnimation() {
        withAnimation(Animation.linear(duration: 0.1)) {
            arrowRotation = currentRotation
        }
    }
}

