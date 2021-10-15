// swiftlint:disable all
import Amplify
import Foundation

public struct TestData: Model {
  public let id: String
  public var name: String?
  public var device: String?
  public var reading: Int?
  public var time: Int?
  
  public init(id: String = UUID().uuidString,
      name: String? = nil,
      device: String? = nil,
      reading: Int? = nil,
      time: Int? = nil) {
      self.id = id
      self.name = name
      self.device = device
      self.reading = reading
      self.time = time
  }
}
