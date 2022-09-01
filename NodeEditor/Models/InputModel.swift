//
//  InputModel.swift
//  NodeEditor
//
//  Created by クワシマ・ユウキ on 2022/09/02.
//

import Foundation
import SwiftUI

class InputModel<T>: InputModelBase {
    @Published var value: T? = nil
}

