//
//  InputModelBase.swift
//  NodeEditor
//
//  Created by クワシマ・ユウキ on 2022/09/02.
//

import Foundation
import Combine

class InputModelBase {
    let uuid: String = UUID().uuidString
    var subscriptions = Set<AnyCancellable>()
}
