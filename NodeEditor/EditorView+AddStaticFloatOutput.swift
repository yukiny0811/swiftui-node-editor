//
//  EditorView+AddStaticFloatOutput.swift
//  NodeEditor
//
//  Created by クワシマ・ユウキ on 2022/09/02.
//

import Foundation
import SwiftUI

extension EditorView {
    
    func addStaticFloatOutput() {
        let floatOutputModel = OutputModel<Float>()
        ioModel.outputModels[floatOutputModel.uuid] = floatOutputModel
        let outputView = OutputView(outputModel: floatOutputModel)
        let node = NodeView(inputViews: [], outputViews: [outputView], processViewType: .floatOutput)
        self.nodeViews.append(node)
        
        
    }
}

extension ProcessViewType {
    static let floatOutput = ProcessViewType(rawValue: "floatOutput")
}
