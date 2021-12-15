//
//  HexagonView.swift
//  Carpooling
//
//  Created by Kyo Mangold on 16.11.21.
//

import SwiftUI

struct HexagonView: View {
    var body: some View {
        
        Canvas { context, size in
            context.draw(Image(systemName: "hexagon.fill"), in: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        }
        .frame(width: 200, height: 212)
        .foregroundStyle(.linearGradient(colors: [.blue, .gray], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

struct HexagonView_Previews: PreviewProvider {
    static var previews: some View {
        HexagonView()
    }
}
