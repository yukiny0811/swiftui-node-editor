//
//  NodeView+InsertProcessView.swift
//  NodeEditor
//
//  Created by クワシマ・ユウキ on 2022/09/02.
//

import Foundation
import SwiftUI

extension NodeView {
    @ViewBuilder
    func insertProcessView(_ type: ProcessViewType) -> some View {
        switch processViewType {
        case .floatOutput:
            FloatOutputView()
        default:
            Text("none")
        }
    }
}

struct ProcessViewType: RawRepresentable, Equatable {
    var rawValue: String
    static let initial = ProcessViewType(rawValue: "initial")
}
