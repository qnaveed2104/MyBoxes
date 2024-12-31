//
//  ContentView.swift
//  HarnesApp
//
//  Created by Qazi on 31/12/2024.
//

import SwiftUI
import MyBoxes

struct ContentView: View {
    private let drawShape: DrawShape
       
       init() {
           let config = ShapeConfig() // Replace with your actual config
           self.drawShape = DrawShape(config: config)
       }
       
    var body: some View {
        VStack {
            drawShape.drawShapeVertically() // Example usage
                        drawShape.drawShapeHorizontally() // Example
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
