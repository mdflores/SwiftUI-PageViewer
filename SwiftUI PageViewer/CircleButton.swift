//
//  CircleButton.swift
//  SwiftUI PageViewer
//
//  Created by Pavel Holyavkin on 7/14/20.
//  Copyright © 2020 Pavel Holyavkin. All rights reserved.
//

import SwiftUI

struct CircleButton: View {
    @Binding var isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            self.action()
        }) { Circle()
            .frame(width: 16, height: 16)
            .foregroundColor(self.isSelected ? Color.white : Color.white.opacity(0.5))
        }
    }
}
