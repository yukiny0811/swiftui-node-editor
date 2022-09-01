//
//  IOModel.swift
//  NodeEditor
//
//  Created by クワシマ・ユウキ on 2022/09/02.
//

import Foundation
import SwiftUI

class IOModel {
    var outputModels: [UUID: OutputModelBase] = [:]
    var inputModels: [UUID: InputModelBase] = [:]
}
