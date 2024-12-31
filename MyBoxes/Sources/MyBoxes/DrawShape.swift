//
//  DrawShape.swift
//  DynamicBoxes-Master
//
//  Created by Qazi on 28/12/2024.
//

import Foundation
import SwiftUI

@MainActor
public final class DrawShape {
    let config :ShapeConfig
    public init(config: ShapeConfig) {
        self.config = config
    }
    
    private func drawShape(direction: ShapeDirection) -> AnyView{
        return AnyView(ShapeContentView(config: config, direction: direction))
    }
    
    public func drawShapeVertically() -> AnyView{
        return drawShape(direction: .vertical)
    }
    
    public func drawShapeHorizontally() -> AnyView{
        return drawShape(direction: .horizental)
    }
}
