// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "eece1d2e783c04c08e535470f64153a9"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: TestData.self)
  }
}