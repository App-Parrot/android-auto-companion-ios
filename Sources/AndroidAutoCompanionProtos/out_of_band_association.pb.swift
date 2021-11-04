// Copyright 2021 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: third_party/companion_protos/out_of_band_association.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct Com_Google_Companionprotos_OutOfBandAssociationToken {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var encryptionKey: Data = Data()

  public var ihuIv: Data = Data()

  public var mobileIv: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Com_Google_Companionprotos_OutOfBandAssociationData {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var deviceIdentifier: Data = Data()

  public var token: Com_Google_Companionprotos_OutOfBandAssociationToken {
    get {return _token ?? Com_Google_Companionprotos_OutOfBandAssociationToken()}
    set {_token = newValue}
  }
  /// Returns true if `token` has been explicitly set.
  public var hasToken: Bool {return self._token != nil}
  /// Clears the value of `token`. Subsequent reads from it will return its default value.
  public mutating func clearToken() {self._token = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _token: Com_Google_Companionprotos_OutOfBandAssociationToken? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "com.google.companionprotos"

extension Com_Google_Companionprotos_OutOfBandAssociationToken: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".OutOfBandAssociationToken"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "encryption_key"),
    2: .standard(proto: "ihu_iv"),
    3: .standard(proto: "mobile_iv"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.encryptionKey) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.ihuIv) }()
      case 3: try { try decoder.decodeSingularBytesField(value: &self.mobileIv) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.encryptionKey.isEmpty {
      try visitor.visitSingularBytesField(value: self.encryptionKey, fieldNumber: 1)
    }
    if !self.ihuIv.isEmpty {
      try visitor.visitSingularBytesField(value: self.ihuIv, fieldNumber: 2)
    }
    if !self.mobileIv.isEmpty {
      try visitor.visitSingularBytesField(value: self.mobileIv, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Com_Google_Companionprotos_OutOfBandAssociationToken, rhs: Com_Google_Companionprotos_OutOfBandAssociationToken) -> Bool {
    if lhs.encryptionKey != rhs.encryptionKey {return false}
    if lhs.ihuIv != rhs.ihuIv {return false}
    if lhs.mobileIv != rhs.mobileIv {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Com_Google_Companionprotos_OutOfBandAssociationData: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".OutOfBandAssociationData"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "device_identifier"),
    2: .same(proto: "token"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.deviceIdentifier) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._token) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    if !self.deviceIdentifier.isEmpty {
      try visitor.visitSingularBytesField(value: self.deviceIdentifier, fieldNumber: 1)
    }
    try { if let v = self._token {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Com_Google_Companionprotos_OutOfBandAssociationData, rhs: Com_Google_Companionprotos_OutOfBandAssociationData) -> Bool {
    if lhs.deviceIdentifier != rhs.deviceIdentifier {return false}
    if lhs._token != rhs._token {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
