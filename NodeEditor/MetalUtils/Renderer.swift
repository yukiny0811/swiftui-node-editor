//
//  ShaderRenderer.swift
//  NodeEditor
//
//  Created by クワシマ・ユウキ on 2022/09/02.
//

import Foundation
import MetalKit

class Renderer: NSObject {
    var computePipelineState: MTLComputePipelineState
    var args: [Float]
    var frameTimeStart: Date!
    
    init(functionName: String) {
        args = [0.0, 0.0]
        let function = ShaderCore.library.makeFunction(name: functionName)!
        computePipelineState = try! ShaderCore.device.makeComputePipelineState(function: function)
        frameTimeStart = Date()
    }
}
