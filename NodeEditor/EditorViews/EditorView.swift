//
//  EditorView.swift
//  NodeEditor
//
//  Created by クワシマ・ユウキ on 2022/09/01.
//

import SwiftUI

struct EditorView: View {
    var outputModels: [UUID: OutputModelBase] = [:]
    var inputModels: [UUID: InputModelBase] = [:]
    @State var testViews: [Prototype1] = []
    var body: some View {
        
        ForEach(testViews) { v in
            v
        }
        Button("test") {
            testViews.append(Prototype1())
        }
        MetalView()
            .frame(width: 100, height: 100)
    }
}

struct EditorView_Previews: PreviewProvider {
    static var previews: some View {
        EditorView()
    }
}
