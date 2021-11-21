// swiftlint:disable all
import Amplify
import Foundation

public struct TestData: Model {
  public let id: String
  public var sound: Int?
  public var temperature: Double?
  public var hvac: String?
  public var occupancy: String?
  public var temp_anomaly: String?
  public var sound_anomaly: String?
  public var devName: String?
  public var devId: String?
  public var location: String?
  public var timestamp: Int?
  public var dt: String?
  
  public init(id: String = UUID().uuidString,
      sound: Int? = nil,
      temperature: Double? = nil,
      hvac: String? = nil,
      occupancy: String? = nil,
      temp_anomaly: String? = nil,
      sound_anomaly: String? = nil,
      devName: String? = nil,
      devId: String? = nil,
      location: String? = nil,
      timestamp: Int? = nil,
      dt: String? = nil) {
      self.id = id
      self.sound = sound
      self.temperature = temperature
      self.hvac = hvac
      self.occupancy = occupancy
      self.temp_anomaly = temp_anomaly
      self.sound_anomaly = sound_anomaly
      self.devName = devName
      self.devId = devId
      self.location = location
      self.timestamp = timestamp
      self.dt = dt
  }
}