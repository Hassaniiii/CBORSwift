import Foundation

// extension Int: CBORDecodable {
//     public var decode: CBOREncodable {
//         return 11
//     }
// }

// extension ByteString: CBORDecodable {
//     public var decode: CBOREncodable {
//         return ByteString("aa")
//     }
// }

// extension String: CBORDecodable {
//     public var decode: CBOREncodable {
//         return "11"
//     }
// }

// extension Data: CBORDecodable {
//     public var decode: CBOREncodable {
//         return Data([0x00])
//     }
// }

extension Array: CBORDecodable where Element == UInt8 {
    public var decode: CBOREncodable {
        return [11, 11]
    }
}

// extension Dictionary: CBORDecodable where Key: CBORDecodable, Value: CBORDecodable {
//     public var decode: CBOREncodable {
//         return ["11":"11"]
//     }
// }

// extension SimpleValue: CBORDecodable {
//     public var decode: CBOREncodable {
//         return SimpleValue(.null)
//     }
// }

// extension TaggedValue: CBORDecodable {
//     public var decode: CBOREncodable {
//         return TaggedValue(tag: 5, 10)
//     }
// }

// extension Decodable: CBORDecodable {
//     public var encode: Encodable {
//         return ""
//     }
// }