//
//  ShapeConfig.swift
//  DynamicBoxes-Master
//
//  Created by Qazi on 28/12/2024.
//

import Foundation
import SwiftUICore

 public struct ShapeConfig {
    let noOfShape: Int
    let shapeWidth: CGFloat
    let shapeHeight: CGFloat
    let shapeColor: Color
    let shapeType: ShapeType
    
     public init(noOfShare: Int = 3, shapeWidth: CGFloat = 50, shapeHeight: CGFloat = 50, shapeColor: Color = .green, shapeType: ShapeType =
        .square) {
        self.noOfShape = noOfShare
        self.shapeWidth = shapeWidth
        self.shapeHeight = shapeHeight
        self.shapeColor = shapeColor
        self.shapeType = shapeType
    }
}
