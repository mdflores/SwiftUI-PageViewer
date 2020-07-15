//
//  ContentView.swift
//  SwiftUI PageViewer
//
//  Created by Pavel Holyavkin on 7/14/20.
//  Copyright © 2020 Pavel Holyavkin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let pages: [PageViewData] = [
        PageViewData(imageNamed: "01"),
        PageViewData(imageNamed: "02"),
        PageViewData(imageNamed: "03"),
        PageViewData(imageNamed: "04"),
        PageViewData(imageNamed: "05")
    ]
    @State private var index: Int = 0
    
    var body: some View {
        ZStack(alignment: .bottom) {
            SwiperView(pages: self.pages, index: self.$index)
            HStack(spacing: 8) {
                ForEach(0..<self.pages.count) { index in
                    CircleButton(isSelected: Binding<Bool>(get: { self.index == index }, set: { _ in })) {
                        withAnimation {
                            self.index = index
                        }
                    }
                }
            }
            .padding(.bottom, 12)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
        .previewDisplayName("iPhone 11")
    }
}
