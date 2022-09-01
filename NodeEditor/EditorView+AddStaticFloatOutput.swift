//
//  EditorView+AddStaticFloatOutput.swift
//  NodeEditor
//
//  Created by クワシマ・ユウキ on 2022/09/02.
//

import Foundation

extension EditorView {
    func addStaticFloatOutput() {
        let floatOutputModel = OutputModel<Float>()
        ioModel.outputModels[floatOutputModel.uuid] = floatOutputModel
        
        let outputView = OutputView(outputModel: floatOutputModel)
        
        let node = NodeView(inputViews: [], outputViews: [outputView])
        
        self.nodeViews.append(node)
    }
}
