//
//  InputView.swift
//  NodeEditor
//
//  Created by クワシマ・ユウキ on 2022/09/02.
//

import SwiftUI

struct InputView: View, Identifiable {
    static let preferredHeight: CGFloat = 30
    let id = UUID()
    let inputModel: InputModelBase
    var body: some View {
        HStack {
            Circle()
                .frame(width: 30, height: 30, alignment: .leading)
            Text("input1")
        }
    }
}
