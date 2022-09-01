//
//  EditorView.swift
//  NodeEditor
//
//  Created by クワシマ・ユウキ on 2022/09/01.
//

import SwiftUI

struct EditorView: View {
    let ioModel = IOModel()
    @State var nodeViews: [NodeView] = []
    var body: some View {
        ScrollView([.horizontal, .vertical], showsIndicators: true) {
            ZStack {
                ForEach(nodeViews) { v in
                    v.moveDisabled(true)
                }
                MetalView()
                    .frame(width: 100, height: 100)
                Button("test") {
                    addStaticFloatOutput()
                }
            }
            .frame(minWidth: 1500, minHeight: 1500)
        }
    }
}
