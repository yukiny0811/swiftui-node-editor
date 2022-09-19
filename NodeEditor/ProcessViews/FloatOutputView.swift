//
//  FloatOutputView.swift
//  NodeEditor
//
//  Created by クワシマ・ユウキ on 2022/09/02.
//

import SwiftUI
import Combine

struct FloatOutputView: View { //WIP
    var subscriptions = Set<AnyCancellable>()
    let processModel = ProcessModel<Float>()
    @State var sliderValue: Float = 0.0
    var body: some View {
        VStack {
            Text("Float Value 0.0~1.0")
                .frame(alignment: .center)
            Slider(value: $sliderValue, in: 0.0...1.0)
                .frame(alignment: .center)
        }
    }
}
