//
//  MetalView.swift
//  NodeEditor
//
//  Created by クワシマ・ユウキ on 2022/09/02.
//

import SwiftUI
import MetalKit

struct MetalView: NSViewRepresentable {
    let mtkView = MTKView()
    let renderer = Renderer(functionName: "shade")
    
    func makeNSView(context: Context) -> MTKView {
        mtkView.device = ShaderCore.device
        mtkView.frame = .zero
        mtkView.delegate = renderer
        mtkView.enableSetNeedsDisplay = false
        mtkView.colorPixelFormat = .bgra8Unorm
        mtkView.framebufferOnly = false
        mtkView.frame = .zero
        mtkView.preferredFramesPerSecond = 60
        return mtkView
    }
    
    func updateNSView(_ nsView: MTKView, context: Context) {
    }
    
    typealias NSViewType = MTKView
    
    
}
