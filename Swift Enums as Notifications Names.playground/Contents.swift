/*
 The MIT License (MIT)
 
 Copyright (c) 2016 Richard Stelling (@rjstelling)
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 */

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
