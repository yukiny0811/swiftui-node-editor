//
//  OutputView.swift
//  NodeEditor
//
//  Created by クワシマ・ユウキ on 2022/09/02.
//

import SwiftUI

fileprivate enum NodeSizeConfig {
    static let min = CGSize(width: 200, height: 30)
    static let max = CGSize(width: 200, height: 50)
}

struct OutputView: View, Identifiable {
    static let preferredHeight: CGFloat = 30
    let id = UUID()
    let outputModel: OutputModelBase
    var body: some View {
        HStack {
            Spacer()
            Text("output1")
                .frame(alignment: .trailing)
            Circle()
                .frame(width: 20, height: 20, alignment: .trailing)
        }
        .frame(minWidth: NodeSizeConfig.min.width, maxWidth: NodeSizeConfig.max.width, minHeight: NodeSizeConfig.min.height)
        .background(Color.yellow)
        .fixedSize()
    }
}
