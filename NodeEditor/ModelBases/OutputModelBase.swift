//
//  OutputModelBase.swift
//  NodeEditor
//
//  Created by クワシマ・ユウキ on 2022/09/02.
//

import Foundation
import Combine

class OutputModelBase {
    let uuid = UUID()
    var subscriptions = Set<AnyCancellable>()
}
