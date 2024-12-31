//
//  ShapeContentView.swift
//  DynamicBoxes-Master
//
//  Created by Qazi on 28/12/2024.
//

import SwiftUI

struct ShapeContentView: View {
    let config :ShapeConfig
    let direction: ShapeDirection
    var body: some View {
        if direction == .horizental {
            getHorizeentalStack()
        }
        else {
            getVerticalStack()
        }
    }
    
    private func getHorizeentalStack() -> some View {
        HStack {
            getAllShapes()
        }
    }
    
    private func getVerticalStack() -> some View {
        VStack {
            getAllShapes()
        }
    }
    
    
    /// Generates all shapes based on the configuration
    private func getAllShapes() -> some View {
        ForEach(0..<config.noOfShape, id: \.self) { _ in
            createShape()
                .frame(width: config.shapeWidth, height: config.shapeHeight)
                .foregroundColor(config.shapeColor)
        }
    }
    
    /// Creates a single shape (square or circle) based on the shape type
    private func createShape() -> some View {
        Group {
            switch config.shapeType {
            case .square:
                Rectangle()
            case .circle:
                Circle()
            }
        }
    }}

#Preview {
    ShapeContentView(config: ShapeConfig(), direction: .vertical)
}
