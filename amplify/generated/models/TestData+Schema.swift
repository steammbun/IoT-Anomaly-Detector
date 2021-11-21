// swiftlint:disable all
import Amplify
import Foundation

extension TestData {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case sound
    case temperature
    case hvac
    case occupancy
    case temp_anomaly
    case sound_anomaly
    case devName
    case devId
    case location
    case timestamp
    case dt
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let testData = TestData.keys
    
    model.pluralName = "TestData"
    
    model.fields(
      .id(),
      .field(testData.sound, is: .optional, ofType: .int),
      .field(testData.temperature, is: .optional, ofType: .double),
      .field(testData.hvac, is: .optional, ofType: .string),
      .field(testData.occupancy, is: .optional, ofType: .string),
      .field(testData.temp_anomaly, is: .optional, ofType: .string),
      .field(testData.sound_anomaly, is: .optional, ofType: .string),
      .field(testData.devName, is: .optional, ofType: .string),
      .field(testData.devId, is: .optional, ofType: .string),
      .field(testData.location, is: .optional, ofType: .string),
      .field(testData.timestamp, is: .optional, ofType: .int),
      .field(testData.dt, is: .optional, ofType: .string)
    )
    }
}