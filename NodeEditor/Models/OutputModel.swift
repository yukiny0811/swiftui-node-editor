//
//  OutputModel.swift
//  NodeEditor
//
//  Created by クワシマ・ユウキ on 2022/09/02.
//

import Foundation
import SwiftUI

class OutputModel<T>: OutputModelBase {
    @Published var value: T? = nil
}
