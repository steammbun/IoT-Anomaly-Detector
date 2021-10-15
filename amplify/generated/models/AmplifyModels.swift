// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "ed44f0f889499a11c682b46b9dce5cb7"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: TestData.self)
  }
}