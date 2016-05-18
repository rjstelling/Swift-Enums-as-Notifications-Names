//: Playground - noun: a place where people can play

import UIKit

public enum Notification: String {
    
    private static let type = "Notification"
    
    case Connected
    case Event
    case Disconnected
    
    public enum Key: String, CustomPlaygroundQuickLookable {
        
        // Event Keys
        case Source
        case Identifier
        case Name
        case Data
        case Timestamp
        
        // Synthesize
        public var rawValue: String {
            return "\(type).\(self.dynamicType).\(self)"
        }
        
        public func customPlaygroundQuickLook() -> PlaygroundQuickLook {
            return .Text(self.rawValue)
        }
    }
}

let source = Notification.Key.Source
print(Notification.Key.Source.rawValue)

let timestamp = Notification.Key.Timestamp
print(Notification.Key.Timestamp.rawValue)