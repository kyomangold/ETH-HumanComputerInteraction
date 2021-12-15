//
//  RatingView.swift
//  Carpooling
//
//  Created by Kyo Mangold on 07.12.21.
//

import SwiftUI

struct RatingView: View {
    
    @Binding var rating: Int?
    var max: Int = 5
    
    private func starType(index: Int) -> String {
        
        if let rating = self.rating {
            return index <= rating ? "star.fill" : "star"
        } else {
            return "star"
        }
        
    }
    
    var body: some View {
        HStack {
            ForEach(1..<(max + 1), id: \.self) { index in
                Image(systemName: self.starType(index: index))
                    .foregroundColor(Color.yellow)
                    .onTapGesture {
                        self.rating = index
                    }
            }
        }
    }
}

