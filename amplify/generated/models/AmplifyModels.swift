// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "ea85c98ee81e6d63b729d51a223eea83"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: TestData.self)
  }
}