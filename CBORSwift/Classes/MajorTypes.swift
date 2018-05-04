//
//  MajorTypes.swift
//  CBORSwift
//
//  Created by Hassaniiii on 5/2/18.
//  Copyright © 2018 Hassan Shahbazi. All rights reserved.
//
enum MajorType: String {
    case major0 = "000" //unsigned integer
    case major1 = "001" //negative integer
    case major2 = "010" //byte string
    case major3 = "011" //text string
    case major4 = "100" //array of data items
    case major5 = "101" //map of pairs of data items (dictionary)
    case major6 = "110" //optional semantic tagging of other major types
    case major7 = "111" //floating point numbers and simple data types
}

class MajorTypes: NSObject {
    var type: MajorType?
    
    public func set(type: MajorType) {
        self.type = type
    }
    
    public func get() -> Data {
        return Data(bytes: prepareBits())
    }
    
    private func prepareBits() -> [UInt8] {
        if let bits = type?.rawValue.bits {
            return [UInt8](bits[bits.count-3..<bits.count])
        }
        return [UInt8](repeating: 0, count: 3)
    }
}