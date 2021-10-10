import SwiftUI

@available(macOS 10.15.0, *)
public struct Shift: ViewModifier {
    
    var direction: Direction
    
    public func body(content: Content) -> some View {
        switch direction {
        case .left:
            HStack {
                content
                Spacer()
            }
        case .right:
            HStack {
                Spacer()
                content
            }
        case .up:
            VStack {
                Spacer()
                content
            }
        case .down:
            VStack {
                content
                Spacer()
            }
        case .horizontalCenter:
            HStack {
                Spacer()
                content
                Spacer()
            }
        case .verticleCenter:
            VStack {
                Spacer()
                content
                Spacer()
            }
        }
    }
    
    enum Direction {
        case left
        case right
        case up
        case down
        case horizontalCenter
        case verticleCenter
    }
}

@available(macOS 10.15, *)
extension View {
    func shift(_ direction: Shift.Direction) -> some View {
        modifier(Shift(direction: direction))
    }
}
