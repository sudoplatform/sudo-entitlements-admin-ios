//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct GetEntitlementsSetInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(name: String) {
    graphQLMap = ["name": name]
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }
}

public struct GetEntitlementsSequenceInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(name: String) {
    graphQLMap = ["name": name]
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }
}

public struct GetEntitlementsForUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(externalId: String) {
    graphQLMap = ["externalId": externalId]
  }

  public var externalId: String {
    get {
      return graphQLMap["externalId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "externalId")
    }
  }
}

public enum AccountStates: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case active
  case locked
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ACTIVE": self = .active
      case "LOCKED": self = .locked
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .active: return "ACTIVE"
      case .locked: return "LOCKED"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: AccountStates, rhs: AccountStates) -> Bool {
    switch (lhs, rhs) {
      case (.active, .active): return true
      case (.locked, .locked): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct PagingInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(limit: Optional<Int?> = nil, nextToken: Optional<String?> = nil) {
    graphQLMap = ["limit": limit, "nextToken": nextToken]
  }

  public var limit: Optional<Int?> {
    get {
      return graphQLMap["limit"] as! Optional<Int?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "limit")
    }
  }

  public var nextToken: Optional<String?> {
    get {
      return graphQLMap["nextToken"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "nextToken")
    }
  }
}

public struct AddEntitlementsSetInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(name: String, description: Optional<String?> = nil, entitlements: [EntitlementInput]) {
    graphQLMap = ["name": name, "description": description, "entitlements": entitlements]
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var description: Optional<String?> {
    get {
      return graphQLMap["description"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var entitlements: [EntitlementInput] {
    get {
      return graphQLMap["entitlements"] as! [EntitlementInput]
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "entitlements")
    }
  }
}

public struct EntitlementInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(name: String, description: Optional<String?> = nil, value: Int) {
    graphQLMap = ["name": name, "description": description, "value": value]
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var description: Optional<String?> {
    get {
      return graphQLMap["description"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var value: Int {
    get {
      return graphQLMap["value"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "value")
    }
  }
}

public struct SetEntitlementsSetInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(name: String, description: Optional<String?> = nil, entitlements: [EntitlementInput]) {
    graphQLMap = ["name": name, "description": description, "entitlements": entitlements]
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var description: Optional<String?> {
    get {
      return graphQLMap["description"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var entitlements: [EntitlementInput] {
    get {
      return graphQLMap["entitlements"] as! [EntitlementInput]
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "entitlements")
    }
  }
}

public struct RemoveEntitlementsSetInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(name: String) {
    graphQLMap = ["name": name]
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }
}

public struct AddEntitlementsSequenceInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(name: String, description: Optional<String?> = nil, transitions: [EntitlementsSequenceTransitionInput]) {
    graphQLMap = ["name": name, "description": description, "transitions": transitions]
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var description: Optional<String?> {
    get {
      return graphQLMap["description"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var transitions: [EntitlementsSequenceTransitionInput] {
    get {
      return graphQLMap["transitions"] as! [EntitlementsSequenceTransitionInput]
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "transitions")
    }
  }
}

public struct EntitlementsSequenceTransitionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(entitlementsSetName: String, duration: Optional<String?> = nil) {
    graphQLMap = ["entitlementsSetName": entitlementsSetName, "duration": duration]
  }

  public var entitlementsSetName: String {
    get {
      return graphQLMap["entitlementsSetName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "entitlementsSetName")
    }
  }

  public var duration: Optional<String?> {
    get {
      return graphQLMap["duration"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "duration")
    }
  }
}

public struct SetEntitlementsSequenceInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(name: String, description: Optional<String?> = nil, transitions: [EntitlementsSequenceTransitionInput]) {
    graphQLMap = ["name": name, "description": description, "transitions": transitions]
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var description: Optional<String?> {
    get {
      return graphQLMap["description"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var transitions: [EntitlementsSequenceTransitionInput] {
    get {
      return graphQLMap["transitions"] as! [EntitlementsSequenceTransitionInput]
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "transitions")
    }
  }
}

public struct RemoveEntitlementsSequenceInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(name: String) {
    graphQLMap = ["name": name]
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }
}

public struct ApplyEntitlementsSetToUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(externalId: String, entitlementsSetName: String) {
    graphQLMap = ["externalId": externalId, "entitlementsSetName": entitlementsSetName]
  }

  public var externalId: String {
    get {
      return graphQLMap["externalId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "externalId")
    }
  }

  public var entitlementsSetName: String {
    get {
      return graphQLMap["entitlementsSetName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "entitlementsSetName")
    }
  }
}

public struct ApplyEntitlementsSequenceToUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(externalId: String, entitlementsSequenceName: String, transitionsRelativeToEpochMs: Optional<Double?> = nil) {
    graphQLMap = ["externalId": externalId, "entitlementsSequenceName": entitlementsSequenceName, "transitionsRelativeToEpochMs": transitionsRelativeToEpochMs]
  }

  public var externalId: String {
    get {
      return graphQLMap["externalId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "externalId")
    }
  }

  public var entitlementsSequenceName: String {
    get {
      return graphQLMap["entitlementsSequenceName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "entitlementsSequenceName")
    }
  }

  public var transitionsRelativeToEpochMs: Optional<Double?> {
    get {
      return graphQLMap["transitionsRelativeToEpochMs"] as! Optional<Double?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "transitionsRelativeToEpochMs")
    }
  }
}

public struct ApplyEntitlementsToUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(externalId: String, entitlements: [EntitlementInput]) {
    graphQLMap = ["externalId": externalId, "entitlements": entitlements]
  }

  public var externalId: String {
    get {
      return graphQLMap["externalId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "externalId")
    }
  }

  public var entitlements: [EntitlementInput] {
    get {
      return graphQLMap["entitlements"] as! [EntitlementInput]
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "entitlements")
    }
  }
}

public final class GetEntitlementsSetQuery: GraphQLQuery {
  public static let operationString =
    "query GetEntitlementsSet($input: GetEntitlementsSetInput!) {\n  getEntitlementsSet(input: $input) {\n    __typename\n    createdAtEpochMs\n    updatedAtEpochMs\n    version\n    name\n    description\n    entitlements {\n      __typename\n      name\n      description\n      value\n    }\n  }\n}"

  public var input: GetEntitlementsSetInput

  public init(input: GetEntitlementsSetInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getEntitlementsSet", arguments: ["input": GraphQLVariable("input")], type: .object(GetEntitlementsSet.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getEntitlementsSet: GetEntitlementsSet? = nil) {
      self.init(snapshot: ["__typename": "Query", "getEntitlementsSet": getEntitlementsSet.flatMap { $0.snapshot }])
    }

    public var getEntitlementsSet: GetEntitlementsSet? {
      get {
        return (snapshot["getEntitlementsSet"] as? Snapshot).flatMap { GetEntitlementsSet(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getEntitlementsSet")
      }
    }

    public struct GetEntitlementsSet: GraphQLSelectionSet {
      public static let possibleTypes = ["EntitlementsSet"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("entitlements", type: .nonNull(.list(.nonNull(.object(Entitlement.selections))))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Int, name: String, description: String? = nil, entitlements: [Entitlement]) {
        self.init(snapshot: ["__typename": "EntitlementsSet", "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "name": name, "description": description, "entitlements": entitlements.map { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      public var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      public var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var entitlements: [Entitlement] {
        get {
          return (snapshot["entitlements"] as! [Snapshot]).map { Entitlement(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "entitlements")
        }
      }

      public struct Entitlement: GraphQLSelectionSet {
        public static let possibleTypes = ["Entitlement"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("value", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(name: String, description: String? = nil, value: Int) {
          self.init(snapshot: ["__typename": "Entitlement", "name": name, "description": description, "value": value])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var value: Int {
          get {
            return snapshot["value"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "value")
          }
        }
      }
    }
  }
}

public final class ListEntitlementsSetsQuery: GraphQLQuery {
  public static let operationString =
    "query ListEntitlementsSets($nextToken: String) {\n  listEntitlementsSets(nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      createdAtEpochMs\n      updatedAtEpochMs\n      version\n      name\n      description\n      entitlements {\n        __typename\n        name\n        description\n        value\n      }\n    }\n    nextToken\n  }\n}"

  public var nextToken: String?

  public init(nextToken: String? = nil) {
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listEntitlementsSets", arguments: ["nextToken": GraphQLVariable("nextToken")], type: .nonNull(.object(ListEntitlementsSet.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listEntitlementsSets: ListEntitlementsSet) {
      self.init(snapshot: ["__typename": "Query", "listEntitlementsSets": listEntitlementsSets.snapshot])
    }

    public var listEntitlementsSets: ListEntitlementsSet {
      get {
        return ListEntitlementsSet(snapshot: snapshot["listEntitlementsSets"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "listEntitlementsSets")
      }
    }

    public struct ListEntitlementsSet: GraphQLSelectionSet {
      public static let possibleTypes = ["EntitlementsSetsConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.nonNull(.object(Item.selections))))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "EntitlementsSetsConnection", "items": items.map { $0.snapshot }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item] {
        get {
          return (snapshot["items"] as! [Snapshot]).map { Item(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "items")
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
        public static let possibleTypes = ["EntitlementsSet"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
          GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
          GraphQLField("version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("entitlements", type: .nonNull(.list(.nonNull(.object(Entitlement.selections))))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Int, name: String, description: String? = nil, entitlements: [Entitlement]) {
          self.init(snapshot: ["__typename": "EntitlementsSet", "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "name": name, "description": description, "entitlements": entitlements.map { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var createdAtEpochMs: Double {
          get {
            return snapshot["createdAtEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
          }
        }

        public var updatedAtEpochMs: Double {
          get {
            return snapshot["updatedAtEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
          }
        }

        public var version: Int {
          get {
            return snapshot["version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "version")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var entitlements: [Entitlement] {
          get {
            return (snapshot["entitlements"] as! [Snapshot]).map { Entitlement(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "entitlements")
          }
        }

        public struct Entitlement: GraphQLSelectionSet {
          public static let possibleTypes = ["Entitlement"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("description", type: .scalar(String.self)),
            GraphQLField("value", type: .nonNull(.scalar(Int.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(name: String, description: String? = nil, value: Int) {
            self.init(snapshot: ["__typename": "Entitlement", "name": name, "description": description, "value": value])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var description: String? {
            get {
              return snapshot["description"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "description")
            }
          }

          public var value: Int {
            get {
              return snapshot["value"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "value")
            }
          }
        }
      }
    }
  }
}

public final class GetEntitlementsSequenceQuery: GraphQLQuery {
  public static let operationString =
    "query GetEntitlementsSequence($input: GetEntitlementsSequenceInput!) {\n  getEntitlementsSequence(input: $input) {\n    __typename\n    name\n    description\n    createdAtEpochMs\n    updatedAtEpochMs\n    version\n    transitions {\n      __typename\n      entitlementsSetName\n      duration\n    }\n  }\n}"

  public var input: GetEntitlementsSequenceInput

  public init(input: GetEntitlementsSequenceInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getEntitlementsSequence", arguments: ["input": GraphQLVariable("input")], type: .object(GetEntitlementsSequence.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getEntitlementsSequence: GetEntitlementsSequence? = nil) {
      self.init(snapshot: ["__typename": "Query", "getEntitlementsSequence": getEntitlementsSequence.flatMap { $0.snapshot }])
    }

    public var getEntitlementsSequence: GetEntitlementsSequence? {
      get {
        return (snapshot["getEntitlementsSequence"] as? Snapshot).flatMap { GetEntitlementsSequence(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getEntitlementsSequence")
      }
    }

    public struct GetEntitlementsSequence: GraphQLSelectionSet {
      public static let possibleTypes = ["EntitlementsSequence"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("transitions", type: .nonNull(.list(.nonNull(.object(Transition.selections))))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(name: String, description: String? = nil, createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Int, transitions: [Transition]) {
        self.init(snapshot: ["__typename": "EntitlementsSequence", "name": name, "description": description, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "transitions": transitions.map { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      public var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      public var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      public var transitions: [Transition] {
        get {
          return (snapshot["transitions"] as! [Snapshot]).map { Transition(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "transitions")
        }
      }

      public struct Transition: GraphQLSelectionSet {
        public static let possibleTypes = ["EntitlementsSequenceTransition"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("entitlementsSetName", type: .nonNull(.scalar(String.self))),
          GraphQLField("duration", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(entitlementsSetName: String, duration: String? = nil) {
          self.init(snapshot: ["__typename": "EntitlementsSequenceTransition", "entitlementsSetName": entitlementsSetName, "duration": duration])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var entitlementsSetName: String {
          get {
            return snapshot["entitlementsSetName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "entitlementsSetName")
          }
        }

        public var duration: String? {
          get {
            return snapshot["duration"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "duration")
          }
        }
      }
    }
  }
}

public final class ListEntitlementsSequencesQuery: GraphQLQuery {
  public static let operationString =
    "query ListEntitlementsSequences($nextToken: String) {\n  listEntitlementsSequences(nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      name\n      description\n      createdAtEpochMs\n      updatedAtEpochMs\n      version\n      transitions {\n        __typename\n        entitlementsSetName\n        duration\n      }\n    }\n    nextToken\n  }\n}"

  public var nextToken: String?

  public init(nextToken: String? = nil) {
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listEntitlementsSequences", arguments: ["nextToken": GraphQLVariable("nextToken")], type: .nonNull(.object(ListEntitlementsSequence.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listEntitlementsSequences: ListEntitlementsSequence) {
      self.init(snapshot: ["__typename": "Query", "listEntitlementsSequences": listEntitlementsSequences.snapshot])
    }

    public var listEntitlementsSequences: ListEntitlementsSequence {
      get {
        return ListEntitlementsSequence(snapshot: snapshot["listEntitlementsSequences"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "listEntitlementsSequences")
      }
    }

    public struct ListEntitlementsSequence: GraphQLSelectionSet {
      public static let possibleTypes = ["EntitlementsSequencesConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.nonNull(.object(Item.selections))))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "EntitlementsSequencesConnection", "items": items.map { $0.snapshot }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item] {
        get {
          return (snapshot["items"] as! [Snapshot]).map { Item(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "items")
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
        public static let possibleTypes = ["EntitlementsSequence"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
          GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
          GraphQLField("version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("transitions", type: .nonNull(.list(.nonNull(.object(Transition.selections))))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(name: String, description: String? = nil, createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Int, transitions: [Transition]) {
          self.init(snapshot: ["__typename": "EntitlementsSequence", "name": name, "description": description, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "transitions": transitions.map { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var createdAtEpochMs: Double {
          get {
            return snapshot["createdAtEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
          }
        }

        public var updatedAtEpochMs: Double {
          get {
            return snapshot["updatedAtEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
          }
        }

        public var version: Int {
          get {
            return snapshot["version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "version")
          }
        }

        public var transitions: [Transition] {
          get {
            return (snapshot["transitions"] as! [Snapshot]).map { Transition(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "transitions")
          }
        }

        public struct Transition: GraphQLSelectionSet {
          public static let possibleTypes = ["EntitlementsSequenceTransition"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("entitlementsSetName", type: .nonNull(.scalar(String.self))),
            GraphQLField("duration", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(entitlementsSetName: String, duration: String? = nil) {
            self.init(snapshot: ["__typename": "EntitlementsSequenceTransition", "entitlementsSetName": entitlementsSetName, "duration": duration])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var entitlementsSetName: String {
            get {
              return snapshot["entitlementsSetName"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "entitlementsSetName")
            }
          }

          public var duration: String? {
            get {
              return snapshot["duration"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "duration")
            }
          }
        }
      }
    }
  }
}

public final class GetEntitlementsForUserQuery: GraphQLQuery {
  public static let operationString =
    "query GetEntitlementsForUser($input: GetEntitlementsForUserInput!) {\n  getEntitlementsForUser(input: $input) {\n    __typename\n    entitlements {\n      __typename\n      createdAtEpochMs\n      updatedAtEpochMs\n      version\n      externalId\n      owner\n      accountState\n      entitlementsSetName\n      entitlementsSequenceName\n      entitlements {\n        __typename\n        name\n        description\n        value\n      }\n      transitionsRelativeToEpochMs\n    }\n    consumption {\n      __typename\n      consumer {\n        __typename\n        id\n        issuer\n      }\n      name\n      value\n      consumed\n      available\n      firstConsumedAtEpochMs\n      lastConsumedAtEpochMs\n    }\n  }\n}"

  public var input: GetEntitlementsForUserInput

  public init(input: GetEntitlementsForUserInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getEntitlementsForUser", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(GetEntitlementsForUser.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getEntitlementsForUser: GetEntitlementsForUser) {
      self.init(snapshot: ["__typename": "Query", "getEntitlementsForUser": getEntitlementsForUser.snapshot])
    }

    public var getEntitlementsForUser: GetEntitlementsForUser {
      get {
        return GetEntitlementsForUser(snapshot: snapshot["getEntitlementsForUser"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "getEntitlementsForUser")
      }
    }

    public struct GetEntitlementsForUser: GraphQLSelectionSet {
      public static let possibleTypes = ["ExternalEntitlementsConsumption"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("entitlements", type: .nonNull(.object(Entitlement.selections))),
        GraphQLField("consumption", type: .nonNull(.list(.nonNull(.object(Consumption.selections))))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(entitlements: Entitlement, consumption: [Consumption]) {
        self.init(snapshot: ["__typename": "ExternalEntitlementsConsumption", "entitlements": entitlements.snapshot, "consumption": consumption.map { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var entitlements: Entitlement {
        get {
          return Entitlement(snapshot: snapshot["entitlements"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "entitlements")
        }
      }

      public var consumption: [Consumption] {
        get {
          return (snapshot["consumption"] as! [Snapshot]).map { Consumption(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "consumption")
        }
      }

      public struct Entitlement: GraphQLSelectionSet {
        public static let possibleTypes = ["ExternalUserEntitlements"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
          GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
          GraphQLField("version", type: .nonNull(.scalar(Double.self))),
          GraphQLField("externalId", type: .nonNull(.scalar(String.self))),
          GraphQLField("owner", type: .scalar(String.self)),
          GraphQLField("accountState", type: .scalar(AccountStates.self)),
          GraphQLField("entitlementsSetName", type: .scalar(String.self)),
          GraphQLField("entitlementsSequenceName", type: .scalar(String.self)),
          GraphQLField("entitlements", type: .nonNull(.list(.nonNull(.object(Entitlement.selections))))),
          GraphQLField("transitionsRelativeToEpochMs", type: .scalar(Double.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Double, externalId: String, owner: String? = nil, accountState: AccountStates? = nil, entitlementsSetName: String? = nil, entitlementsSequenceName: String? = nil, entitlements: [Entitlement], transitionsRelativeToEpochMs: Double? = nil) {
          self.init(snapshot: ["__typename": "ExternalUserEntitlements", "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "externalId": externalId, "owner": owner, "accountState": accountState, "entitlementsSetName": entitlementsSetName, "entitlementsSequenceName": entitlementsSequenceName, "entitlements": entitlements.map { $0.snapshot }, "transitionsRelativeToEpochMs": transitionsRelativeToEpochMs])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var createdAtEpochMs: Double {
          get {
            return snapshot["createdAtEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
          }
        }

        public var updatedAtEpochMs: Double {
          get {
            return snapshot["updatedAtEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
          }
        }

        public var version: Double {
          get {
            return snapshot["version"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "version")
          }
        }

        public var externalId: String {
          get {
            return snapshot["externalId"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "externalId")
          }
        }

        public var owner: String? {
          get {
            return snapshot["owner"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "owner")
          }
        }

        public var accountState: AccountStates? {
          get {
            return snapshot["accountState"] as? AccountStates
          }
          set {
            snapshot.updateValue(newValue, forKey: "accountState")
          }
        }

        public var entitlementsSetName: String? {
          get {
            return snapshot["entitlementsSetName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "entitlementsSetName")
          }
        }

        public var entitlementsSequenceName: String? {
          get {
            return snapshot["entitlementsSequenceName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "entitlementsSequenceName")
          }
        }

        public var entitlements: [Entitlement] {
          get {
            return (snapshot["entitlements"] as! [Snapshot]).map { Entitlement(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "entitlements")
          }
        }

        public var transitionsRelativeToEpochMs: Double? {
          get {
            return snapshot["transitionsRelativeToEpochMs"] as? Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "transitionsRelativeToEpochMs")
          }
        }

        public struct Entitlement: GraphQLSelectionSet {
          public static let possibleTypes = ["Entitlement"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("description", type: .scalar(String.self)),
            GraphQLField("value", type: .nonNull(.scalar(Int.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(name: String, description: String? = nil, value: Int) {
            self.init(snapshot: ["__typename": "Entitlement", "name": name, "description": description, "value": value])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          public var description: String? {
            get {
              return snapshot["description"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "description")
            }
          }

          public var value: Int {
            get {
              return snapshot["value"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "value")
            }
          }
        }
      }

      public struct Consumption: GraphQLSelectionSet {
        public static let possibleTypes = ["EntitlementConsumption"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("consumer", type: .object(Consumer.selections)),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("value", type: .nonNull(.scalar(Int.self))),
          GraphQLField("consumed", type: .nonNull(.scalar(Int.self))),
          GraphQLField("available", type: .nonNull(.scalar(Int.self))),
          GraphQLField("firstConsumedAtEpochMs", type: .scalar(Double.self)),
          GraphQLField("lastConsumedAtEpochMs", type: .scalar(Double.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(consumer: Consumer? = nil, name: String, value: Int, consumed: Int, available: Int, firstConsumedAtEpochMs: Double? = nil, lastConsumedAtEpochMs: Double? = nil) {
          self.init(snapshot: ["__typename": "EntitlementConsumption", "consumer": consumer.flatMap { $0.snapshot }, "name": name, "value": value, "consumed": consumed, "available": available, "firstConsumedAtEpochMs": firstConsumedAtEpochMs, "lastConsumedAtEpochMs": lastConsumedAtEpochMs])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var consumer: Consumer? {
          get {
            return (snapshot["consumer"] as? Snapshot).flatMap { Consumer(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "consumer")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var value: Int {
          get {
            return snapshot["value"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "value")
          }
        }

        public var consumed: Int {
          get {
            return snapshot["consumed"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "consumed")
          }
        }

        public var available: Int {
          get {
            return snapshot["available"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "available")
          }
        }

        public var firstConsumedAtEpochMs: Double? {
          get {
            return snapshot["firstConsumedAtEpochMs"] as? Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "firstConsumedAtEpochMs")
          }
        }

        public var lastConsumedAtEpochMs: Double? {
          get {
            return snapshot["lastConsumedAtEpochMs"] as? Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "lastConsumedAtEpochMs")
          }
        }

        public struct Consumer: GraphQLSelectionSet {
          public static let possibleTypes = ["EntitlementConsumer"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("issuer", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, issuer: String) {
            self.init(snapshot: ["__typename": "EntitlementConsumer", "id": id, "issuer": issuer])
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

          public var issuer: String {
            get {
              return snapshot["issuer"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "issuer")
            }
          }
        }
      }
    }
  }
}

public final class AddEntitlementsSetMutation: GraphQLMutation {
  public static let operationString =
    "mutation AddEntitlementsSet($input: AddEntitlementsSetInput!) {\n  addEntitlementsSet(input: $input) {\n    __typename\n    createdAtEpochMs\n    updatedAtEpochMs\n    version\n    name\n    description\n    entitlements {\n      __typename\n      name\n      description\n      value\n    }\n  }\n}"

  public var input: AddEntitlementsSetInput

  public init(input: AddEntitlementsSetInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("addEntitlementsSet", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(AddEntitlementsSet.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(addEntitlementsSet: AddEntitlementsSet) {
      self.init(snapshot: ["__typename": "Mutation", "addEntitlementsSet": addEntitlementsSet.snapshot])
    }

    public var addEntitlementsSet: AddEntitlementsSet {
      get {
        return AddEntitlementsSet(snapshot: snapshot["addEntitlementsSet"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "addEntitlementsSet")
      }
    }

    public struct AddEntitlementsSet: GraphQLSelectionSet {
      public static let possibleTypes = ["EntitlementsSet"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("entitlements", type: .nonNull(.list(.nonNull(.object(Entitlement.selections))))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Int, name: String, description: String? = nil, entitlements: [Entitlement]) {
        self.init(snapshot: ["__typename": "EntitlementsSet", "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "name": name, "description": description, "entitlements": entitlements.map { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      public var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      public var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var entitlements: [Entitlement] {
        get {
          return (snapshot["entitlements"] as! [Snapshot]).map { Entitlement(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "entitlements")
        }
      }

      public struct Entitlement: GraphQLSelectionSet {
        public static let possibleTypes = ["Entitlement"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("value", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(name: String, description: String? = nil, value: Int) {
          self.init(snapshot: ["__typename": "Entitlement", "name": name, "description": description, "value": value])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var value: Int {
          get {
            return snapshot["value"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "value")
          }
        }
      }
    }
  }
}

public final class SetEntitlementsSetMutation: GraphQLMutation {
  public static let operationString =
    "mutation SetEntitlementsSet($input: SetEntitlementsSetInput!) {\n  setEntitlementsSet(input: $input) {\n    __typename\n    createdAtEpochMs\n    updatedAtEpochMs\n    version\n    name\n    description\n    entitlements {\n      __typename\n      name\n      description\n      value\n    }\n  }\n}"

  public var input: SetEntitlementsSetInput

  public init(input: SetEntitlementsSetInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("setEntitlementsSet", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(SetEntitlementsSet.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(setEntitlementsSet: SetEntitlementsSet) {
      self.init(snapshot: ["__typename": "Mutation", "setEntitlementsSet": setEntitlementsSet.snapshot])
    }

    public var setEntitlementsSet: SetEntitlementsSet {
      get {
        return SetEntitlementsSet(snapshot: snapshot["setEntitlementsSet"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "setEntitlementsSet")
      }
    }

    public struct SetEntitlementsSet: GraphQLSelectionSet {
      public static let possibleTypes = ["EntitlementsSet"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("entitlements", type: .nonNull(.list(.nonNull(.object(Entitlement.selections))))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Int, name: String, description: String? = nil, entitlements: [Entitlement]) {
        self.init(snapshot: ["__typename": "EntitlementsSet", "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "name": name, "description": description, "entitlements": entitlements.map { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      public var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      public var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var entitlements: [Entitlement] {
        get {
          return (snapshot["entitlements"] as! [Snapshot]).map { Entitlement(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "entitlements")
        }
      }

      public struct Entitlement: GraphQLSelectionSet {
        public static let possibleTypes = ["Entitlement"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("value", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(name: String, description: String? = nil, value: Int) {
          self.init(snapshot: ["__typename": "Entitlement", "name": name, "description": description, "value": value])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var value: Int {
          get {
            return snapshot["value"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "value")
          }
        }
      }
    }
  }
}

public final class RemoveEntitlementsSetMutation: GraphQLMutation {
  public static let operationString =
    "mutation RemoveEntitlementsSet($input: RemoveEntitlementsSetInput!) {\n  removeEntitlementsSet(input: $input) {\n    __typename\n    createdAtEpochMs\n    updatedAtEpochMs\n    version\n    name\n    description\n    entitlements {\n      __typename\n      name\n      description\n      value\n    }\n  }\n}"

  public var input: RemoveEntitlementsSetInput

  public init(input: RemoveEntitlementsSetInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("removeEntitlementsSet", arguments: ["input": GraphQLVariable("input")], type: .object(RemoveEntitlementsSet.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(removeEntitlementsSet: RemoveEntitlementsSet? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "removeEntitlementsSet": removeEntitlementsSet.flatMap { $0.snapshot }])
    }

    public var removeEntitlementsSet: RemoveEntitlementsSet? {
      get {
        return (snapshot["removeEntitlementsSet"] as? Snapshot).flatMap { RemoveEntitlementsSet(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "removeEntitlementsSet")
      }
    }

    public struct RemoveEntitlementsSet: GraphQLSelectionSet {
      public static let possibleTypes = ["EntitlementsSet"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("entitlements", type: .nonNull(.list(.nonNull(.object(Entitlement.selections))))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Int, name: String, description: String? = nil, entitlements: [Entitlement]) {
        self.init(snapshot: ["__typename": "EntitlementsSet", "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "name": name, "description": description, "entitlements": entitlements.map { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      public var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      public var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var entitlements: [Entitlement] {
        get {
          return (snapshot["entitlements"] as! [Snapshot]).map { Entitlement(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "entitlements")
        }
      }

      public struct Entitlement: GraphQLSelectionSet {
        public static let possibleTypes = ["Entitlement"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("value", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(name: String, description: String? = nil, value: Int) {
          self.init(snapshot: ["__typename": "Entitlement", "name": name, "description": description, "value": value])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var value: Int {
          get {
            return snapshot["value"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "value")
          }
        }
      }
    }
  }
}

public final class AddEntitlementsSequenceMutation: GraphQLMutation {
  public static let operationString =
    "mutation AddEntitlementsSequence($input: AddEntitlementsSequenceInput!) {\n  addEntitlementsSequence(input: $input) {\n    __typename\n    name\n    description\n    createdAtEpochMs\n    updatedAtEpochMs\n    version\n    transitions {\n      __typename\n      entitlementsSetName\n      duration\n    }\n  }\n}"

  public var input: AddEntitlementsSequenceInput

  public init(input: AddEntitlementsSequenceInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("addEntitlementsSequence", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(AddEntitlementsSequence.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(addEntitlementsSequence: AddEntitlementsSequence) {
      self.init(snapshot: ["__typename": "Mutation", "addEntitlementsSequence": addEntitlementsSequence.snapshot])
    }

    public var addEntitlementsSequence: AddEntitlementsSequence {
      get {
        return AddEntitlementsSequence(snapshot: snapshot["addEntitlementsSequence"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "addEntitlementsSequence")
      }
    }

    public struct AddEntitlementsSequence: GraphQLSelectionSet {
      public static let possibleTypes = ["EntitlementsSequence"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("transitions", type: .nonNull(.list(.nonNull(.object(Transition.selections))))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(name: String, description: String? = nil, createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Int, transitions: [Transition]) {
        self.init(snapshot: ["__typename": "EntitlementsSequence", "name": name, "description": description, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "transitions": transitions.map { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      public var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      public var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      public var transitions: [Transition] {
        get {
          return (snapshot["transitions"] as! [Snapshot]).map { Transition(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "transitions")
        }
      }

      public struct Transition: GraphQLSelectionSet {
        public static let possibleTypes = ["EntitlementsSequenceTransition"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("entitlementsSetName", type: .nonNull(.scalar(String.self))),
          GraphQLField("duration", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(entitlementsSetName: String, duration: String? = nil) {
          self.init(snapshot: ["__typename": "EntitlementsSequenceTransition", "entitlementsSetName": entitlementsSetName, "duration": duration])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var entitlementsSetName: String {
          get {
            return snapshot["entitlementsSetName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "entitlementsSetName")
          }
        }

        public var duration: String? {
          get {
            return snapshot["duration"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "duration")
          }
        }
      }
    }
  }
}

public final class SetEntitlementsSequenceMutation: GraphQLMutation {
  public static let operationString =
    "mutation SetEntitlementsSequence($input: SetEntitlementsSequenceInput!) {\n  setEntitlementsSequence(input: $input) {\n    __typename\n    name\n    description\n    createdAtEpochMs\n    updatedAtEpochMs\n    version\n    transitions {\n      __typename\n      entitlementsSetName\n      duration\n    }\n  }\n}"

  public var input: SetEntitlementsSequenceInput

  public init(input: SetEntitlementsSequenceInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("setEntitlementsSequence", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(SetEntitlementsSequence.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(setEntitlementsSequence: SetEntitlementsSequence) {
      self.init(snapshot: ["__typename": "Mutation", "setEntitlementsSequence": setEntitlementsSequence.snapshot])
    }

    public var setEntitlementsSequence: SetEntitlementsSequence {
      get {
        return SetEntitlementsSequence(snapshot: snapshot["setEntitlementsSequence"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "setEntitlementsSequence")
      }
    }

    public struct SetEntitlementsSequence: GraphQLSelectionSet {
      public static let possibleTypes = ["EntitlementsSequence"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("transitions", type: .nonNull(.list(.nonNull(.object(Transition.selections))))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(name: String, description: String? = nil, createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Int, transitions: [Transition]) {
        self.init(snapshot: ["__typename": "EntitlementsSequence", "name": name, "description": description, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "transitions": transitions.map { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      public var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      public var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      public var transitions: [Transition] {
        get {
          return (snapshot["transitions"] as! [Snapshot]).map { Transition(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "transitions")
        }
      }

      public struct Transition: GraphQLSelectionSet {
        public static let possibleTypes = ["EntitlementsSequenceTransition"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("entitlementsSetName", type: .nonNull(.scalar(String.self))),
          GraphQLField("duration", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(entitlementsSetName: String, duration: String? = nil) {
          self.init(snapshot: ["__typename": "EntitlementsSequenceTransition", "entitlementsSetName": entitlementsSetName, "duration": duration])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var entitlementsSetName: String {
          get {
            return snapshot["entitlementsSetName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "entitlementsSetName")
          }
        }

        public var duration: String? {
          get {
            return snapshot["duration"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "duration")
          }
        }
      }
    }
  }
}

public final class RemoveEntitlementsSequenceMutation: GraphQLMutation {
  public static let operationString =
    "mutation RemoveEntitlementsSequence($input: RemoveEntitlementsSequenceInput!) {\n  removeEntitlementsSequence(input: $input) {\n    __typename\n    name\n    description\n    createdAtEpochMs\n    updatedAtEpochMs\n    version\n    transitions {\n      __typename\n      entitlementsSetName\n      duration\n    }\n  }\n}"

  public var input: RemoveEntitlementsSequenceInput

  public init(input: RemoveEntitlementsSequenceInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("removeEntitlementsSequence", arguments: ["input": GraphQLVariable("input")], type: .object(RemoveEntitlementsSequence.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(removeEntitlementsSequence: RemoveEntitlementsSequence? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "removeEntitlementsSequence": removeEntitlementsSequence.flatMap { $0.snapshot }])
    }

    public var removeEntitlementsSequence: RemoveEntitlementsSequence? {
      get {
        return (snapshot["removeEntitlementsSequence"] as? Snapshot).flatMap { RemoveEntitlementsSequence(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "removeEntitlementsSequence")
      }
    }

    public struct RemoveEntitlementsSequence: GraphQLSelectionSet {
      public static let possibleTypes = ["EntitlementsSequence"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("transitions", type: .nonNull(.list(.nonNull(.object(Transition.selections))))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(name: String, description: String? = nil, createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Int, transitions: [Transition]) {
        self.init(snapshot: ["__typename": "EntitlementsSequence", "name": name, "description": description, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "transitions": transitions.map { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      public var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      public var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      public var transitions: [Transition] {
        get {
          return (snapshot["transitions"] as! [Snapshot]).map { Transition(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "transitions")
        }
      }

      public struct Transition: GraphQLSelectionSet {
        public static let possibleTypes = ["EntitlementsSequenceTransition"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("entitlementsSetName", type: .nonNull(.scalar(String.self))),
          GraphQLField("duration", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(entitlementsSetName: String, duration: String? = nil) {
          self.init(snapshot: ["__typename": "EntitlementsSequenceTransition", "entitlementsSetName": entitlementsSetName, "duration": duration])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var entitlementsSetName: String {
          get {
            return snapshot["entitlementsSetName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "entitlementsSetName")
          }
        }

        public var duration: String? {
          get {
            return snapshot["duration"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "duration")
          }
        }
      }
    }
  }
}

public final class ApplyEntitlementsSetToUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation ApplyEntitlementsSetToUser($input: ApplyEntitlementsSetToUserInput!) {\n  applyEntitlementsSetToUser(input: $input) {\n    __typename\n    createdAtEpochMs\n    updatedAtEpochMs\n    version\n    externalId\n    owner\n    accountState\n    entitlementsSetName\n    entitlementsSequenceName\n    entitlements {\n      __typename\n      name\n      description\n      value\n    }\n    transitionsRelativeToEpochMs\n  }\n}"

  public var input: ApplyEntitlementsSetToUserInput

  public init(input: ApplyEntitlementsSetToUserInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("applyEntitlementsSetToUser", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(ApplyEntitlementsSetToUser.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(applyEntitlementsSetToUser: ApplyEntitlementsSetToUser) {
      self.init(snapshot: ["__typename": "Mutation", "applyEntitlementsSetToUser": applyEntitlementsSetToUser.snapshot])
    }

    public var applyEntitlementsSetToUser: ApplyEntitlementsSetToUser {
      get {
        return ApplyEntitlementsSetToUser(snapshot: snapshot["applyEntitlementsSetToUser"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "applyEntitlementsSetToUser")
      }
    }

    public struct ApplyEntitlementsSetToUser: GraphQLSelectionSet {
      public static let possibleTypes = ["ExternalUserEntitlements"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("version", type: .nonNull(.scalar(Double.self))),
        GraphQLField("externalId", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
        GraphQLField("accountState", type: .scalar(AccountStates.self)),
        GraphQLField("entitlementsSetName", type: .scalar(String.self)),
        GraphQLField("entitlementsSequenceName", type: .scalar(String.self)),
        GraphQLField("entitlements", type: .nonNull(.list(.nonNull(.object(Entitlement.selections))))),
        GraphQLField("transitionsRelativeToEpochMs", type: .scalar(Double.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Double, externalId: String, owner: String? = nil, accountState: AccountStates? = nil, entitlementsSetName: String? = nil, entitlementsSequenceName: String? = nil, entitlements: [Entitlement], transitionsRelativeToEpochMs: Double? = nil) {
        self.init(snapshot: ["__typename": "ExternalUserEntitlements", "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "externalId": externalId, "owner": owner, "accountState": accountState, "entitlementsSetName": entitlementsSetName, "entitlementsSequenceName": entitlementsSequenceName, "entitlements": entitlements.map { $0.snapshot }, "transitionsRelativeToEpochMs": transitionsRelativeToEpochMs])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      public var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      public var version: Double {
        get {
          return snapshot["version"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      public var externalId: String {
        get {
          return snapshot["externalId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "externalId")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }

      public var accountState: AccountStates? {
        get {
          return snapshot["accountState"] as? AccountStates
        }
        set {
          snapshot.updateValue(newValue, forKey: "accountState")
        }
      }

      public var entitlementsSetName: String? {
        get {
          return snapshot["entitlementsSetName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "entitlementsSetName")
        }
      }

      public var entitlementsSequenceName: String? {
        get {
          return snapshot["entitlementsSequenceName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "entitlementsSequenceName")
        }
      }

      public var entitlements: [Entitlement] {
        get {
          return (snapshot["entitlements"] as! [Snapshot]).map { Entitlement(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "entitlements")
        }
      }

      public var transitionsRelativeToEpochMs: Double? {
        get {
          return snapshot["transitionsRelativeToEpochMs"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "transitionsRelativeToEpochMs")
        }
      }

      public struct Entitlement: GraphQLSelectionSet {
        public static let possibleTypes = ["Entitlement"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("value", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(name: String, description: String? = nil, value: Int) {
          self.init(snapshot: ["__typename": "Entitlement", "name": name, "description": description, "value": value])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var value: Int {
          get {
            return snapshot["value"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "value")
          }
        }
      }
    }
  }
}

public final class ApplyEntitlementsSequenceToUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation ApplyEntitlementsSequenceToUser($input: ApplyEntitlementsSequenceToUserInput!) {\n  applyEntitlementsSequenceToUser(input: $input) {\n    __typename\n    createdAtEpochMs\n    updatedAtEpochMs\n    version\n    externalId\n    owner\n    accountState\n    entitlementsSetName\n    entitlementsSequenceName\n    entitlements {\n      __typename\n      name\n      description\n      value\n    }\n    transitionsRelativeToEpochMs\n  }\n}"

  public var input: ApplyEntitlementsSequenceToUserInput

  public init(input: ApplyEntitlementsSequenceToUserInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("applyEntitlementsSequenceToUser", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(ApplyEntitlementsSequenceToUser.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(applyEntitlementsSequenceToUser: ApplyEntitlementsSequenceToUser) {
      self.init(snapshot: ["__typename": "Mutation", "applyEntitlementsSequenceToUser": applyEntitlementsSequenceToUser.snapshot])
    }

    public var applyEntitlementsSequenceToUser: ApplyEntitlementsSequenceToUser {
      get {
        return ApplyEntitlementsSequenceToUser(snapshot: snapshot["applyEntitlementsSequenceToUser"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "applyEntitlementsSequenceToUser")
      }
    }

    public struct ApplyEntitlementsSequenceToUser: GraphQLSelectionSet {
      public static let possibleTypes = ["ExternalUserEntitlements"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("version", type: .nonNull(.scalar(Double.self))),
        GraphQLField("externalId", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
        GraphQLField("accountState", type: .scalar(AccountStates.self)),
        GraphQLField("entitlementsSetName", type: .scalar(String.self)),
        GraphQLField("entitlementsSequenceName", type: .scalar(String.self)),
        GraphQLField("entitlements", type: .nonNull(.list(.nonNull(.object(Entitlement.selections))))),
        GraphQLField("transitionsRelativeToEpochMs", type: .scalar(Double.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Double, externalId: String, owner: String? = nil, accountState: AccountStates? = nil, entitlementsSetName: String? = nil, entitlementsSequenceName: String? = nil, entitlements: [Entitlement], transitionsRelativeToEpochMs: Double? = nil) {
        self.init(snapshot: ["__typename": "ExternalUserEntitlements", "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "externalId": externalId, "owner": owner, "accountState": accountState, "entitlementsSetName": entitlementsSetName, "entitlementsSequenceName": entitlementsSequenceName, "entitlements": entitlements.map { $0.snapshot }, "transitionsRelativeToEpochMs": transitionsRelativeToEpochMs])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      public var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      public var version: Double {
        get {
          return snapshot["version"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      public var externalId: String {
        get {
          return snapshot["externalId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "externalId")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }

      public var accountState: AccountStates? {
        get {
          return snapshot["accountState"] as? AccountStates
        }
        set {
          snapshot.updateValue(newValue, forKey: "accountState")
        }
      }

      public var entitlementsSetName: String? {
        get {
          return snapshot["entitlementsSetName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "entitlementsSetName")
        }
      }

      public var entitlementsSequenceName: String? {
        get {
          return snapshot["entitlementsSequenceName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "entitlementsSequenceName")
        }
      }

      public var entitlements: [Entitlement] {
        get {
          return (snapshot["entitlements"] as! [Snapshot]).map { Entitlement(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "entitlements")
        }
      }

      public var transitionsRelativeToEpochMs: Double? {
        get {
          return snapshot["transitionsRelativeToEpochMs"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "transitionsRelativeToEpochMs")
        }
      }

      public struct Entitlement: GraphQLSelectionSet {
        public static let possibleTypes = ["Entitlement"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("value", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(name: String, description: String? = nil, value: Int) {
          self.init(snapshot: ["__typename": "Entitlement", "name": name, "description": description, "value": value])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var value: Int {
          get {
            return snapshot["value"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "value")
          }
        }
      }
    }
  }
}

public final class ApplyEntitlementsToUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation ApplyEntitlementsToUser($input: ApplyEntitlementsToUserInput!) {\n  applyEntitlementsToUser(input: $input) {\n    __typename\n    createdAtEpochMs\n    updatedAtEpochMs\n    version\n    externalId\n    owner\n    accountState\n    entitlementsSetName\n    entitlementsSequenceName\n    entitlements {\n      __typename\n      name\n      description\n      value\n    }\n    transitionsRelativeToEpochMs\n  }\n}"

  public var input: ApplyEntitlementsToUserInput

  public init(input: ApplyEntitlementsToUserInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("applyEntitlementsToUser", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(ApplyEntitlementsToUser.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(applyEntitlementsToUser: ApplyEntitlementsToUser) {
      self.init(snapshot: ["__typename": "Mutation", "applyEntitlementsToUser": applyEntitlementsToUser.snapshot])
    }

    public var applyEntitlementsToUser: ApplyEntitlementsToUser {
      get {
        return ApplyEntitlementsToUser(snapshot: snapshot["applyEntitlementsToUser"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "applyEntitlementsToUser")
      }
    }

    public struct ApplyEntitlementsToUser: GraphQLSelectionSet {
      public static let possibleTypes = ["ExternalUserEntitlements"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("version", type: .nonNull(.scalar(Double.self))),
        GraphQLField("externalId", type: .nonNull(.scalar(String.self))),
        GraphQLField("owner", type: .scalar(String.self)),
        GraphQLField("accountState", type: .scalar(AccountStates.self)),
        GraphQLField("entitlementsSetName", type: .scalar(String.self)),
        GraphQLField("entitlementsSequenceName", type: .scalar(String.self)),
        GraphQLField("entitlements", type: .nonNull(.list(.nonNull(.object(Entitlement.selections))))),
        GraphQLField("transitionsRelativeToEpochMs", type: .scalar(Double.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Double, externalId: String, owner: String? = nil, accountState: AccountStates? = nil, entitlementsSetName: String? = nil, entitlementsSequenceName: String? = nil, entitlements: [Entitlement], transitionsRelativeToEpochMs: Double? = nil) {
        self.init(snapshot: ["__typename": "ExternalUserEntitlements", "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "externalId": externalId, "owner": owner, "accountState": accountState, "entitlementsSetName": entitlementsSetName, "entitlementsSequenceName": entitlementsSequenceName, "entitlements": entitlements.map { $0.snapshot }, "transitionsRelativeToEpochMs": transitionsRelativeToEpochMs])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      public var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      public var version: Double {
        get {
          return snapshot["version"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      public var externalId: String {
        get {
          return snapshot["externalId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "externalId")
        }
      }

      public var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }

      public var accountState: AccountStates? {
        get {
          return snapshot["accountState"] as? AccountStates
        }
        set {
          snapshot.updateValue(newValue, forKey: "accountState")
        }
      }

      public var entitlementsSetName: String? {
        get {
          return snapshot["entitlementsSetName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "entitlementsSetName")
        }
      }

      public var entitlementsSequenceName: String? {
        get {
          return snapshot["entitlementsSequenceName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "entitlementsSequenceName")
        }
      }

      public var entitlements: [Entitlement] {
        get {
          return (snapshot["entitlements"] as! [Snapshot]).map { Entitlement(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "entitlements")
        }
      }

      public var transitionsRelativeToEpochMs: Double? {
        get {
          return snapshot["transitionsRelativeToEpochMs"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "transitionsRelativeToEpochMs")
        }
      }

      public struct Entitlement: GraphQLSelectionSet {
        public static let possibleTypes = ["Entitlement"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("value", type: .nonNull(.scalar(Int.self))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(name: String, description: String? = nil, value: Int) {
          self.init(snapshot: ["__typename": "Entitlement", "name": name, "description": description, "value": value])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        public var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var value: Int {
          get {
            return snapshot["value"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "value")
          }
        }
      }
    }
  }
}
