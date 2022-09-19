//
//  NodeView.swift
//  NodeEditor
//
//  Created by クワシマ・ユウキ on 2022/09/02.
//

import SwiftUI
import Combine

fileprivate enum NodeSizeConfig {
    static let min = CGSize(width: 200, height: 30)
    static let max = CGSize(width: 200, height: CGFloat.infinity)
}

class ProcessModel<T> {
    var subscriptions = Set<AnyCancellable>()
    @Published var value: T? = nil
}

struct NodeView: View, Identifiable {
    let id = UUID()
    let inputViews: [InputView]
    let outputViews: [OutputView]
    let processViewType: ProcessViewType
    var processView: some View {
        insertProcessView(processViewType)
    }
    init() {
        processView.processModel.$value.sink { value in
            (outputViews[0].outputModel as! OutputModel<Float>).value = value
        }.store(in: &processView.processModel.subscriptions)
    }
    @State private var position: CGPoint = CGPoint(x: 200, y: 200)
    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 30, height: 30, alignment: .leading)
                    .gesture(DragGesture().onChanged(){ value in
                        self.position += value.translation.toCGPoint()
                    })
            }.frame(maxWidth: .infinity, alignment: .leading)
            ForEach(inputViews) { v in
                v
            }
            processView
            ForEach(outputViews) { v in
                v
            }
        }
        .frame(minWidth: NodeSizeConfig.min.width, maxWidth: NodeSizeConfig.max.width, minHeight: NodeSizeConfig.min.height)
        .border(Color.gray, width: 2)
        .scaledToFit()
        .position(position)
    }
}
