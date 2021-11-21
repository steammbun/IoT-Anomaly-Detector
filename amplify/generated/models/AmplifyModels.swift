// swiftlint:disable all
import Amplify
import Foundation

// Contains the set of classes that conforms to the `Model` protocol. 

final public class AmplifyModels: AmplifyModelRegistration {
  public let version: String = "1d28fc8600f3c03210d864750b351d5b"
  
  public func registerModels(registry: ModelRegistry.Type) {
    ModelRegistry.register(modelType: TestData.self)
  }
}