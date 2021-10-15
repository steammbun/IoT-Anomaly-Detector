// swiftlint:disable all
import Amplify
import Foundation

extension TestData {
  // MARK: - CodingKeys 
   public enum CodingKeys: String, ModelKey {
    case id
    case name
    case device
    case reading
    case time
  }
  
  public static let keys = CodingKeys.self
  //  MARK: - ModelSchema 
  
  public static let schema = defineSchema { model in
    let testData = TestData.keys
    
    model.pluralName = "TestData"
    
    model.fields(
      .id(),
      .field(testData.name, is: .optional, ofType: .string),
      .field(testData.device, is: .optional, ofType: .string),
      .field(testData.reading, is: .optional, ofType: .int),
      .field(testData.time, is: .optional, ofType: .int)
    )
    }
}