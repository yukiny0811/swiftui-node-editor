//
//  InputModelBase.swift
//  NodeEditor
//
//  Created by クワシマ・ユウキ on 2022/09/02.
//

import Foundation
import Combine

class InputModelBase {
    let uuid = UUID()
    var subscriptions = Set<AnyCancellable>()
}
