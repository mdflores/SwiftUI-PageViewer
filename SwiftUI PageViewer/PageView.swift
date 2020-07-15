//
//  PageView.swift
//  SwiftUI PageViewer
//
//  Created by Pavel Holyavkin on 7/14/20.
//  Copyright © 2020 Pavel Holyavkin. All rights reserved.
//

import SwiftUI

struct PageView: View {
    @Binding var isSelected: Bool
    
    let viewData: PageViewData
    var body: some View {
        Image(viewData.imageNamed)
            .resizable()
            .clipped()
    }
}

struct PageViewData: Identifiable {
    let id = UUID().uuidString
    let imageNamed: String
}
