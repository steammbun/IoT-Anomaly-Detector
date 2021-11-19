//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateTestDataInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, sound: Int? = nil, temperature: Int? = nil, hvac: String? = nil, occupancy: String? = nil, anomaly: String? = nil, timestamp: Int? = nil, dt: String? = nil) {
    graphQLMap = ["id": id, "sound": sound, "temperature": temperature, "hvac": hvac, "occupancy": occupancy, "anomaly": anomaly, "timestamp": timestamp, "dt": dt]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var sound: Int? {
    get {
      return graphQLMap["sound"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "sound")
    }
  }

  public var temperature: Int? {
    get {
      return graphQLMap["temperature"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "temperature")
    }
  }

  public var hvac: String? {
    get {
      return graphQLMap["hvac"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "hvac")
    }
  }

  public var occupancy: String? {
    get {
      return graphQLMap["occupancy"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "occupancy")
    }
  }

  public var anomaly: String? {
    get {
      return graphQLMap["anomaly"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "anomaly")
    }
  }

  public var timestamp: Int? {
    get {
      return graphQLMap["timestamp"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "timestamp")
    }
  }

  public var dt: String? {
    get {
      return graphQLMap["dt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "dt")
    }
  }
}

public struct ModelTestDataConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(sound: ModelIntInput? = nil, temperature: ModelIntInput? = nil, hvac: ModelStringInput? = nil, occupancy: ModelStringInput? = nil, anomaly: ModelStringInput? = nil, timestamp: ModelIntInput? = nil, dt: ModelStringInput? = nil, and: [ModelTestDataConditionInput?]? = nil, or: [ModelTestDataConditionInput?]? = nil, not: ModelTestDataConditionInput? = nil) {
    graphQLMap = ["sound": sound, "temperature": temperature, "hvac": hvac, "occupancy": occupancy, "anomaly": anomaly, "timestamp": timestamp, "dt": dt, "and": and, "or": or, "not": not]
  }

  public var sound: ModelIntInput? {
    get {
      return graphQLMap["sound"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "sound")
    }
  }

  public var temperature: ModelIntInput? {
    get {
      return graphQLMap["temperature"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "temperature")
    }
  }

  public var hvac: ModelStringInput? {
    get {
      return graphQLMap["hvac"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "hvac")
    }
  }

  public var occupancy: ModelStringInput? {
    get {
      return graphQLMap["occupancy"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "occupancy")
    }
  }

  public var anomaly: ModelStringInput? {
    get {
      return graphQLMap["anomaly"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "anomaly")
    }
  }

  public var timestamp: ModelIntInput? {
    get {
      return graphQLMap["timestamp"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "timestamp")
    }
  }

  public var dt: ModelStringInput? {
    get {
      return graphQLMap["dt"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "dt")
    }
  }

  public var and: [ModelTestDataConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelTestDataConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelTestDataConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelTestDataConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelTestDataConditionInput? {
    get {
      return graphQLMap["not"] as! ModelTestDataConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelIntInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between, "attributeExists": attributeExists, "attributeType": attributeType]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }
}

public enum ModelAttributeTypes: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case binary
  case binarySet
  case bool
  case list
  case map
  case number
  case numberSet
  case string
  case stringSet
  case null
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "binary": self = .binary
      case "binarySet": self = .binarySet
      case "bool": self = .bool
      case "list": self = .list
      case "map": self = .map
      case "number": self = .number
      case "numberSet": self = .numberSet
      case "string": self = .string
      case "stringSet": self = .stringSet
      case "_null": self = .null
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .binary: return "binary"
      case .binarySet: return "binarySet"
      case .bool: return "bool"
      case .list: return "list"
      case .map: return "map"
      case .number: return "number"
      case .numberSet: return "numberSet"
      case .string: return "string"
      case .stringSet: return "stringSet"
      case .null: return "_null"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: ModelAttributeTypes, rhs: ModelAttributeTypes) -> Bool {
    switch (lhs, rhs) {
      case (.binary, .binary): return true
      case (.binarySet, .binarySet): return true
      case (.bool, .bool): return true
      case (.list, .list): return true
      case (.map, .map): return true
      case (.number, .number): return true
      case (.numberSet, .numberSet): return true
      case (.string, .string): return true
      case (.stringSet, .stringSet): return true
      case (.null, .null): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct ModelStringInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public struct ModelSizeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public struct UpdateTestDataInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, sound: Int? = nil, temperature: Int? = nil, hvac: String? = nil, occupancy: String? = nil, anomaly: String? = nil, timestamp: Int? = nil, dt: String? = nil) {
    graphQLMap = ["id": id, "sound": sound, "temperature": temperature, "hvac": hvac, "occupancy": occupancy, "anomaly": anomaly, "timestamp": timestamp, "dt": dt]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var sound: Int? {
    get {
      return graphQLMap["sound"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "sound")
    }
  }

  public var temperature: Int? {
    get {
      return graphQLMap["temperature"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "temperature")
    }
  }

  public var hvac: String? {
    get {
      return graphQLMap["hvac"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "hvac")
    }
  }

  public var occupancy: String? {
    get {
      return graphQLMap["occupancy"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "occupancy")
    }
  }

  public var anomaly: String? {
    get {
      return graphQLMap["anomaly"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "anomaly")
    }
  }

  public var timestamp: Int? {
    get {
      return graphQLMap["timestamp"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "timestamp")
    }
  }

  public var dt: String? {
    get {
      return graphQLMap["dt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "dt")
    }
  }
}

public struct DeleteTestDataInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct ModelTestDataFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, sound: ModelIntInput? = nil, temperature: ModelIntInput? = nil, hvac: ModelStringInput? = nil, occupancy: ModelStringInput? = nil, anomaly: ModelStringInput? = nil, timestamp: ModelIntInput? = nil, dt: ModelStringInput? = nil, and: [ModelTestDataFilterInput?]? = nil, or: [ModelTestDataFilterInput?]? = nil, not: ModelTestDataFilterInput? = nil) {
    graphQLMap = ["id": id, "sound": sound, "temperature": temperature, "hvac": hvac, "occupancy": occupancy, "anomaly": anomaly, "timestamp": timestamp, "dt": dt, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var sound: ModelIntInput? {
    get {
      return graphQLMap["sound"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "sound")
    }
  }

  public var temperature: ModelIntInput? {
    get {
      return graphQLMap["temperature"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "temperature")
    }
  }

  public var hvac: ModelStringInput? {
    get {
      return graphQLMap["hvac"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "hvac")
    }
  }

  public var occupancy: ModelStringInput? {
    get {
      return graphQLMap["occupancy"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "occupancy")
    }
  }

  public var anomaly: ModelStringInput? {
    get {
      return graphQLMap["anomaly"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "anomaly")
    }
  }

  public var timestamp: ModelIntInput? {
    get {
      return graphQLMap["timestamp"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "timestamp")
    }
  }

  public var dt: ModelStringInput? {
    get {
      return graphQLMap["dt"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "dt")
    }
  }

  public var and: [ModelTestDataFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelTestDataFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelTestDataFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelTestDataFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelTestDataFilterInput? {
    get {
      return graphQLMap["not"] as! ModelTestDataFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelIDInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public final class CreateTestDataMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateTestData($input: CreateTestDataInput!, $condition: ModelTestDataConditionInput) {\n  createTestData(input: $input, condition: $condition) {\n    __typename\n    id\n    sound\n    temperature\n    hvac\n    occupancy\n    anomaly\n    timestamp\n    dt\n    createdAt\n    updatedAt\n  }\n}"

  public var input: CreateTestDataInput
  public var condition: ModelTestDataConditionInput?

  public init(input: CreateTestDataInput, condition: ModelTestDataConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createTestData", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateTestDatum.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createTestData: CreateTestDatum? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createTestData": createTestData.flatMap { $0.snapshot }])
    }

    public var createTestData: CreateTestDatum? {
      get {
        return (snapshot["createTestData"] as? Snapshot).flatMap { CreateTestDatum(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createTestData")
      }
    }

    public struct CreateTestDatum: GraphQLSelectionSet {
      public static let possibleTypes = ["TestData"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("sound", type: .scalar(Int.self)),
        GraphQLField("temperature", type: .scalar(Int.self)),
        GraphQLField("hvac", type: .scalar(String.self)),
        GraphQLField("occupancy", type: .scalar(String.self)),
        GraphQLField("anomaly", type: .scalar(String.self)),
        GraphQLField("timestamp", type: .scalar(Int.self)),
        GraphQLField("dt", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, sound: Int? = nil, temperature: Int? = nil, hvac: String? = nil, occupancy: String? = nil, anomaly: String? = nil, timestamp: Int? = nil, dt: String? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "TestData", "id": id, "sound": sound, "temperature": temperature, "hvac": hvac, "occupancy": occupancy, "anomaly": anomaly, "timestamp": timestamp, "dt": dt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var sound: Int? {
        get {
          return snapshot["sound"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "sound")
        }
      }

      public var temperature: Int? {
        get {
          return snapshot["temperature"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "temperature")
        }
      }

      public var hvac: String? {
        get {
          return snapshot["hvac"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "hvac")
        }
      }

      public var occupancy: String? {
        get {
          return snapshot["occupancy"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "occupancy")
        }
      }

      public var anomaly: String? {
        get {
          return snapshot["anomaly"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "anomaly")
        }
      }

      public var timestamp: Int? {
        get {
          return snapshot["timestamp"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "timestamp")
        }
      }

      public var dt: String? {
        get {
          return snapshot["dt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "dt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateTestDataMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateTestData($input: UpdateTestDataInput!, $condition: ModelTestDataConditionInput) {\n  updateTestData(input: $input, condition: $condition) {\n    __typename\n    id\n    sound\n    temperature\n    hvac\n    occupancy\n    anomaly\n    timestamp\n    dt\n    createdAt\n    updatedAt\n  }\n}"

  public var input: UpdateTestDataInput
  public var condition: ModelTestDataConditionInput?

  public init(input: UpdateTestDataInput, condition: ModelTestDataConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateTestData", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateTestDatum.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateTestData: UpdateTestDatum? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateTestData": updateTestData.flatMap { $0.snapshot }])
    }

    public var updateTestData: UpdateTestDatum? {
      get {
        return (snapshot["updateTestData"] as? Snapshot).flatMap { UpdateTestDatum(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateTestData")
      }
    }

    public struct UpdateTestDatum: GraphQLSelectionSet {
      public static let possibleTypes = ["TestData"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("sound", type: .scalar(Int.self)),
        GraphQLField("temperature", type: .scalar(Int.self)),
        GraphQLField("hvac", type: .scalar(String.self)),
        GraphQLField("occupancy", type: .scalar(String.self)),
        GraphQLField("anomaly", type: .scalar(String.self)),
        GraphQLField("timestamp", type: .scalar(Int.self)),
        GraphQLField("dt", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, sound: Int? = nil, temperature: Int? = nil, hvac: String? = nil, occupancy: String? = nil, anomaly: String? = nil, timestamp: Int? = nil, dt: String? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "TestData", "id": id, "sound": sound, "temperature": temperature, "hvac": hvac, "occupancy": occupancy, "anomaly": anomaly, "timestamp": timestamp, "dt": dt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var sound: Int? {
        get {
          return snapshot["sound"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "sound")
        }
      }

      public var temperature: Int? {
        get {
          return snapshot["temperature"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "temperature")
        }
      }

      public var hvac: String? {
        get {
          return snapshot["hvac"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "hvac")
        }
      }

      public var occupancy: String? {
        get {
          return snapshot["occupancy"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "occupancy")
        }
      }

      public var anomaly: String? {
        get {
          return snapshot["anomaly"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "anomaly")
        }
      }

      public var timestamp: Int? {
        get {
          return snapshot["timestamp"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "timestamp")
        }
      }

      public var dt: String? {
        get {
          return snapshot["dt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "dt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class DeleteTestDataMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteTestData($input: DeleteTestDataInput!, $condition: ModelTestDataConditionInput) {\n  deleteTestData(input: $input, condition: $condition) {\n    __typename\n    id\n    sound\n    temperature\n    hvac\n    occupancy\n    anomaly\n    timestamp\n    dt\n    createdAt\n    updatedAt\n  }\n}"

  public var input: DeleteTestDataInput
  public var condition: ModelTestDataConditionInput?

  public init(input: DeleteTestDataInput, condition: ModelTestDataConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteTestData", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteTestDatum.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteTestData: DeleteTestDatum? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteTestData": deleteTestData.flatMap { $0.snapshot }])
    }

    public var deleteTestData: DeleteTestDatum? {
      get {
        return (snapshot["deleteTestData"] as? Snapshot).flatMap { DeleteTestDatum(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteTestData")
      }
    }

    public struct DeleteTestDatum: GraphQLSelectionSet {
      public static let possibleTypes = ["TestData"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("sound", type: .scalar(Int.self)),
        GraphQLField("temperature", type: .scalar(Int.self)),
        GraphQLField("hvac", type: .scalar(String.self)),
        GraphQLField("occupancy", type: .scalar(String.self)),
        GraphQLField("anomaly", type: .scalar(String.self)),
        GraphQLField("timestamp", type: .scalar(Int.self)),
        GraphQLField("dt", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, sound: Int? = nil, temperature: Int? = nil, hvac: String? = nil, occupancy: String? = nil, anomaly: String? = nil, timestamp: Int? = nil, dt: String? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "TestData", "id": id, "sound": sound, "temperature": temperature, "hvac": hvac, "occupancy": occupancy, "anomaly": anomaly, "timestamp": timestamp, "dt": dt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var sound: Int? {
        get {
          return snapshot["sound"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "sound")
        }
      }

      public var temperature: Int? {
        get {
          return snapshot["temperature"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "temperature")
        }
      }

      public var hvac: String? {
        get {
          return snapshot["hvac"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "hvac")
        }
      }

      public var occupancy: String? {
        get {
          return snapshot["occupancy"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "occupancy")
        }
      }

      public var anomaly: String? {
        get {
          return snapshot["anomaly"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "anomaly")
        }
      }

      public var timestamp: Int? {
        get {
          return snapshot["timestamp"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "timestamp")
        }
      }

      public var dt: String? {
        get {
          return snapshot["dt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "dt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class GetTestDataQuery: GraphQLQuery {
  public static let operationString =
    "query GetTestData($id: ID!) {\n  getTestData(id: $id) {\n    __typename\n    id\n    sound\n    temperature\n    hvac\n    occupancy\n    anomaly\n    timestamp\n    dt\n    createdAt\n    updatedAt\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getTestData", arguments: ["id": GraphQLVariable("id")], type: .object(GetTestDatum.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getTestData: GetTestDatum? = nil) {
      self.init(snapshot: ["__typename": "Query", "getTestData": getTestData.flatMap { $0.snapshot }])
    }

    public var getTestData: GetTestDatum? {
      get {
        return (snapshot["getTestData"] as? Snapshot).flatMap { GetTestDatum(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getTestData")
      }
    }

    public struct GetTestDatum: GraphQLSelectionSet {
      public static let possibleTypes = ["TestData"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("sound", type: .scalar(Int.self)),
        GraphQLField("temperature", type: .scalar(Int.self)),
        GraphQLField("hvac", type: .scalar(String.self)),
        GraphQLField("occupancy", type: .scalar(String.self)),
        GraphQLField("anomaly", type: .scalar(String.self)),
        GraphQLField("timestamp", type: .scalar(Int.self)),
        GraphQLField("dt", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, sound: Int? = nil, temperature: Int? = nil, hvac: String? = nil, occupancy: String? = nil, anomaly: String? = nil, timestamp: Int? = nil, dt: String? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "TestData", "id": id, "sound": sound, "temperature": temperature, "hvac": hvac, "occupancy": occupancy, "anomaly": anomaly, "timestamp": timestamp, "dt": dt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var sound: Int? {
        get {
          return snapshot["sound"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "sound")
        }
      }

      public var temperature: Int? {
        get {
          return snapshot["temperature"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "temperature")
        }
      }

      public var hvac: String? {
        get {
          return snapshot["hvac"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "hvac")
        }
      }

      public var occupancy: String? {
        get {
          return snapshot["occupancy"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "occupancy")
        }
      }

      public var anomaly: String? {
        get {
          return snapshot["anomaly"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "anomaly")
        }
      }

      public var timestamp: Int? {
        get {
          return snapshot["timestamp"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "timestamp")
        }
      }

      public var dt: String? {
        get {
          return snapshot["dt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "dt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class ListTestDatasQuery: GraphQLQuery {
  public static let operationString =
    "query ListTestDatas($filter: ModelTestDataFilterInput, $limit: Int, $nextToken: String) {\n  listTestDatas(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      sound\n      temperature\n      hvac\n      occupancy\n      anomaly\n      timestamp\n      dt\n      createdAt\n      updatedAt\n    }\n    nextToken\n  }\n}"

  public var filter: ModelTestDataFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelTestDataFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listTestDatas", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListTestData.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listTestDatas: ListTestData? = nil) {
      self.init(snapshot: ["__typename": "Query", "listTestDatas": listTestDatas.flatMap { $0.snapshot }])
    }

    public var listTestDatas: ListTestData? {
      get {
        return (snapshot["listTestDatas"] as? Snapshot).flatMap { ListTestData(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listTestDatas")
      }
    }

    public struct ListTestData: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelTestDataConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelTestDataConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["TestData"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("sound", type: .scalar(Int.self)),
          GraphQLField("temperature", type: .scalar(Int.self)),
          GraphQLField("hvac", type: .scalar(String.self)),
          GraphQLField("occupancy", type: .scalar(String.self)),
          GraphQLField("anomaly", type: .scalar(String.self)),
          GraphQLField("timestamp", type: .scalar(Int.self)),
          GraphQLField("dt", type: .scalar(String.self)),
          GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
          GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, sound: Int? = nil, temperature: Int? = nil, hvac: String? = nil, occupancy: String? = nil, anomaly: String? = nil, timestamp: Int? = nil, dt: String? = nil, createdAt: String, updatedAt: String) {
          self.init(snapshot: ["__typename": "TestData", "id": id, "sound": sound, "temperature": temperature, "hvac": hvac, "occupancy": occupancy, "anomaly": anomaly, "timestamp": timestamp, "dt": dt, "createdAt": createdAt, "updatedAt": updatedAt])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var sound: Int? {
          get {
            return snapshot["sound"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "sound")
          }
        }

        public var temperature: Int? {
          get {
            return snapshot["temperature"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "temperature")
          }
        }

        public var hvac: String? {
          get {
            return snapshot["hvac"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "hvac")
          }
        }

        public var occupancy: String? {
          get {
            return snapshot["occupancy"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "occupancy")
          }
        }

        public var anomaly: String? {
          get {
            return snapshot["anomaly"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "anomaly")
          }
        }

        public var timestamp: Int? {
          get {
            return snapshot["timestamp"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "timestamp")
          }
        }

        public var dt: String? {
          get {
            return snapshot["dt"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "dt")
          }
        }

        public var createdAt: String {
          get {
            return snapshot["createdAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAt")
          }
        }

        public var updatedAt: String {
          get {
            return snapshot["updatedAt"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAt")
          }
        }
      }
    }
  }
}

public final class OnCreateTestDataSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateTestData {\n  onCreateTestData {\n    __typename\n    id\n    sound\n    temperature\n    hvac\n    occupancy\n    anomaly\n    timestamp\n    dt\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateTestData", type: .object(OnCreateTestDatum.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateTestData: OnCreateTestDatum? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateTestData": onCreateTestData.flatMap { $0.snapshot }])
    }

    public var onCreateTestData: OnCreateTestDatum? {
      get {
        return (snapshot["onCreateTestData"] as? Snapshot).flatMap { OnCreateTestDatum(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateTestData")
      }
    }

    public struct OnCreateTestDatum: GraphQLSelectionSet {
      public static let possibleTypes = ["TestData"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("sound", type: .scalar(Int.self)),
        GraphQLField("temperature", type: .scalar(Int.self)),
        GraphQLField("hvac", type: .scalar(String.self)),
        GraphQLField("occupancy", type: .scalar(String.self)),
        GraphQLField("anomaly", type: .scalar(String.self)),
        GraphQLField("timestamp", type: .scalar(Int.self)),
        GraphQLField("dt", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, sound: Int? = nil, temperature: Int? = nil, hvac: String? = nil, occupancy: String? = nil, anomaly: String? = nil, timestamp: Int? = nil, dt: String? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "TestData", "id": id, "sound": sound, "temperature": temperature, "hvac": hvac, "occupancy": occupancy, "anomaly": anomaly, "timestamp": timestamp, "dt": dt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var sound: Int? {
        get {
          return snapshot["sound"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "sound")
        }
      }

      public var temperature: Int? {
        get {
          return snapshot["temperature"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "temperature")
        }
      }

      public var hvac: String? {
        get {
          return snapshot["hvac"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "hvac")
        }
      }

      public var occupancy: String? {
        get {
          return snapshot["occupancy"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "occupancy")
        }
      }

      public var anomaly: String? {
        get {
          return snapshot["anomaly"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "anomaly")
        }
      }

      public var timestamp: Int? {
        get {
          return snapshot["timestamp"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "timestamp")
        }
      }

      public var dt: String? {
        get {
          return snapshot["dt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "dt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnUpdateTestDataSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateTestData {\n  onUpdateTestData {\n    __typename\n    id\n    sound\n    temperature\n    hvac\n    occupancy\n    anomaly\n    timestamp\n    dt\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateTestData", type: .object(OnUpdateTestDatum.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateTestData: OnUpdateTestDatum? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateTestData": onUpdateTestData.flatMap { $0.snapshot }])
    }

    public var onUpdateTestData: OnUpdateTestDatum? {
      get {
        return (snapshot["onUpdateTestData"] as? Snapshot).flatMap { OnUpdateTestDatum(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateTestData")
      }
    }

    public struct OnUpdateTestDatum: GraphQLSelectionSet {
      public static let possibleTypes = ["TestData"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("sound", type: .scalar(Int.self)),
        GraphQLField("temperature", type: .scalar(Int.self)),
        GraphQLField("hvac", type: .scalar(String.self)),
        GraphQLField("occupancy", type: .scalar(String.self)),
        GraphQLField("anomaly", type: .scalar(String.self)),
        GraphQLField("timestamp", type: .scalar(Int.self)),
        GraphQLField("dt", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, sound: Int? = nil, temperature: Int? = nil, hvac: String? = nil, occupancy: String? = nil, anomaly: String? = nil, timestamp: Int? = nil, dt: String? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "TestData", "id": id, "sound": sound, "temperature": temperature, "hvac": hvac, "occupancy": occupancy, "anomaly": anomaly, "timestamp": timestamp, "dt": dt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var sound: Int? {
        get {
          return snapshot["sound"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "sound")
        }
      }

      public var temperature: Int? {
        get {
          return snapshot["temperature"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "temperature")
        }
      }

      public var hvac: String? {
        get {
          return snapshot["hvac"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "hvac")
        }
      }

      public var occupancy: String? {
        get {
          return snapshot["occupancy"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "occupancy")
        }
      }

      public var anomaly: String? {
        get {
          return snapshot["anomaly"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "anomaly")
        }
      }

      public var timestamp: Int? {
        get {
          return snapshot["timestamp"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "timestamp")
        }
      }

      public var dt: String? {
        get {
          return snapshot["dt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "dt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class OnDeleteTestDataSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteTestData {\n  onDeleteTestData {\n    __typename\n    id\n    sound\n    temperature\n    hvac\n    occupancy\n    anomaly\n    timestamp\n    dt\n    createdAt\n    updatedAt\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteTestData", type: .object(OnDeleteTestDatum.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteTestData: OnDeleteTestDatum? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteTestData": onDeleteTestData.flatMap { $0.snapshot }])
    }

    public var onDeleteTestData: OnDeleteTestDatum? {
      get {
        return (snapshot["onDeleteTestData"] as? Snapshot).flatMap { OnDeleteTestDatum(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteTestData")
      }
    }

    public struct OnDeleteTestDatum: GraphQLSelectionSet {
      public static let possibleTypes = ["TestData"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("sound", type: .scalar(Int.self)),
        GraphQLField("temperature", type: .scalar(Int.self)),
        GraphQLField("hvac", type: .scalar(String.self)),
        GraphQLField("occupancy", type: .scalar(String.self)),
        GraphQLField("anomaly", type: .scalar(String.self)),
        GraphQLField("timestamp", type: .scalar(Int.self)),
        GraphQLField("dt", type: .scalar(String.self)),
        GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
        GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, sound: Int? = nil, temperature: Int? = nil, hvac: String? = nil, occupancy: String? = nil, anomaly: String? = nil, timestamp: Int? = nil, dt: String? = nil, createdAt: String, updatedAt: String) {
        self.init(snapshot: ["__typename": "TestData", "id": id, "sound": sound, "temperature": temperature, "hvac": hvac, "occupancy": occupancy, "anomaly": anomaly, "timestamp": timestamp, "dt": dt, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var sound: Int? {
        get {
          return snapshot["sound"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "sound")
        }
      }

      public var temperature: Int? {
        get {
          return snapshot["temperature"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "temperature")
        }
      }

      public var hvac: String? {
        get {
          return snapshot["hvac"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "hvac")
        }
      }

      public var occupancy: String? {
        get {
          return snapshot["occupancy"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "occupancy")
        }
      }

      public var anomaly: String? {
        get {
          return snapshot["anomaly"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "anomaly")
        }
      }

      public var timestamp: Int? {
        get {
          return snapshot["timestamp"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "timestamp")
        }
      }

      public var dt: String? {
        get {
          return snapshot["dt"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "dt")
        }
      }

      public var createdAt: String {
        get {
          return snapshot["createdAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String {
        get {
          return snapshot["updatedAt"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}