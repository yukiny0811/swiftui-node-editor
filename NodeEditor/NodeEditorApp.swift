//
//  NodeEditorApp.swift
//  NodeEditor
//
//  Created by クワシマ・ユウキ on 2022/09/01.
//

import SwiftUI

enum WindowSize {
    static let min = CGSize(width: 500, height: 600)
    static let max = CGSize(width: CGFloat.infinity, height: CGFloat.infinity)
}

@main
struct NodeEditorApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .frame(minWidth: WindowSize.min.width, minHeight: WindowSize.min.height)
                .frame(maxWidth: WindowSize.max.width, maxHeight: WindowSize.max.height)
        }
    }
}
