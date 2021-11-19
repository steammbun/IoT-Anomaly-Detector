// swiftlint:disable all
import Amplify
import Foundation

public struct TestData: Model {
  public let id: String
  public var sound: Int?
  public var temperature: Int?
  public var hvac: String?
  public var occupancy: String?
  public var anomaly: String?
  public var timestamp: Int?
  public var dt: String?
  
  public init(id: String = UUID().uuidString,
      sound: Int? = nil,
      temperature: Int? = nil,
      hvac: String? = nil,
      occupancy: String? = nil,
      anomaly: String? = nil,
      timestamp: Int? = nil,
      dt: String? = nil) {
      self.id = id
      self.sound = sound
      self.temperature = temperature
      self.hvac = hvac
      self.occupancy = occupancy
      self.anomaly = anomaly
      self.timestamp = timestamp
      self.dt = dt
  }
}