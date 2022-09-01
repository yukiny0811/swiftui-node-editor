//
//  Prototype1.swift
//  NodeEditor
//
//  Created by クワシマ・ユウキ on 2022/09/01.
//

import SwiftUI

fileprivate enum PrototypeSize {
    static let min = CGSize(width: 200, height: 30)
    static let max = CGSize(width: 200, height: CGFloat.infinity)
}

struct Prototype1: View, Identifiable {
    var id = UUID()
    @State private var sliderValue: Float = 0
    @State private var position: CGPoint = CGPoint(x: 200, y: 200)
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HStack {
                    Rectangle()
                        .fill(Color.orange)
                        .frame(width: 30, height: 30, alignment: .leading)
                        .gesture(DragGesture().onChanged(){ value in
                            self.position += value.translation.toCGPoint()
                        })
                }.frame(maxWidth: .infinity, alignment: .leading)
                VStack {
                    Text("Float Value")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title3)
                    Slider(value: $sliderValue, in: 0.0...1.0)
                }.padding()
                
                HStack {
                    Text("Output")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .font(.title3)
                        .padding(.vertical)
                    Circle()
                        .fill(.gray)
                        .frame(width: 30, height: 30, alignment: .trailing)
                        .offset(x: 15, y: 0)
                }
            }
            .frame(minWidth: PrototypeSize.min.width, maxWidth: PrototypeSize.max.width, minHeight: PrototypeSize.min.height)
            .border(Color.gray, width: 2)
            .position(position)
        }
    }
}

struct Prototype1_Previews: PreviewProvider {
    static var previews: some View {
        Prototype1()
    }
}

extension CGSize {
    func toCGPoint() -> CGPoint {
        return CGPoint(x: self.width, y: self.height)
    }
}

extension CGPoint: AdditiveArithmetic {
    public static func - (lhs: CGPoint, rhs: CGPoint) -> CGPoint {
        return CGPoint(x: lhs.x - rhs.x, y: lhs.y - rhs.y)
    }
    
    public static func + (lhs: CGPoint, rhs: CGPoint) -> CGPoint {
        return CGPoint(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
    }
}
