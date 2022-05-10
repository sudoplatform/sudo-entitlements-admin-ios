// swiftlint:disable all
//  This file was automatically generated and should not be edited.

import AWSAppSync

struct GraphQL {

internal struct AddEntitlementsSequenceInput: GraphQLMapConvertible {
  internal var graphQLMap: GraphQLMap

  internal init(description: Optional<String?> = nil, name: String, transitions: [EntitlementsSequenceTransitionInput]) {
    graphQLMap = ["description": description, "name": name, "transitions": transitions]
  }

  internal var description: Optional<String?> {
    get {
      return graphQLMap["description"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  internal var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  internal var transitions: [EntitlementsSequenceTransitionInput] {
    get {
      return graphQLMap["transitions"] as! [EntitlementsSequenceTransitionInput]
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "transitions")
    }
  }
}

internal struct EntitlementsSequenceTransitionInput: GraphQLMapConvertible {
  internal var graphQLMap: GraphQLMap

  internal init(duration: Optional<String?> = nil, entitlementsSetName: String) {
    graphQLMap = ["duration": duration, "entitlementsSetName": entitlementsSetName]
  }

  internal var duration: Optional<String?> {
    get {
      return graphQLMap["duration"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "duration")
    }
  }

  internal var entitlementsSetName: String {
    get {
      return graphQLMap["entitlementsSetName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "entitlementsSetName")
    }
  }
}

internal struct AddEntitlementsSetInput: GraphQLMapConvertible {
  internal var graphQLMap: GraphQLMap

  internal init(description: Optional<String?> = nil, entitlements: [EntitlementInput], name: String) {
    graphQLMap = ["description": description, "entitlements": entitlements, "name": name]
  }

  internal var description: Optional<String?> {
    get {
      return graphQLMap["description"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  internal var entitlements: [EntitlementInput] {
    get {
      return graphQLMap["entitlements"] as! [EntitlementInput]
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "entitlements")
    }
  }

  internal var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }
}

internal struct EntitlementInput: GraphQLMapConvertible {
  internal var graphQLMap: GraphQLMap

  internal init(description: Optional<String?> = nil, name: String, value: Int) {
    graphQLMap = ["description": description, "name": name, "value": value]
  }

  internal var description: Optional<String?> {
    get {
      return graphQLMap["description"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  internal var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  internal var value: Int {
    get {
      return graphQLMap["value"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "value")
    }
  }
}

internal struct ApplyEntitlementsSequenceToUserInput: GraphQLMapConvertible {
  internal var graphQLMap: GraphQLMap

  internal init(entitlementsSequenceName: String, externalId: String, transitionsRelativeToEpochMs: Optional<Double?> = nil) {
    graphQLMap = ["entitlementsSequenceName": entitlementsSequenceName, "externalId": externalId, "transitionsRelativeToEpochMs": transitionsRelativeToEpochMs]
  }

  internal var entitlementsSequenceName: String {
    get {
      return graphQLMap["entitlementsSequenceName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "entitlementsSequenceName")
    }
  }

  internal var externalId: String {
    get {
      return graphQLMap["externalId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "externalId")
    }
  }

  internal var transitionsRelativeToEpochMs: Optional<Double?> {
    get {
      return graphQLMap["transitionsRelativeToEpochMs"] as! Optional<Double?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "transitionsRelativeToEpochMs")
    }
  }
}

internal struct ApplyEntitlementsSequenceToUsersInput: GraphQLMapConvertible {
  internal var graphQLMap: GraphQLMap

  internal init(operations: [ApplyEntitlementsSequenceToUserInput]) {
    graphQLMap = ["operations": operations]
  }

  internal var operations: [ApplyEntitlementsSequenceToUserInput] {
    get {
      return graphQLMap["operations"] as! [ApplyEntitlementsSequenceToUserInput]
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "operations")
    }
  }
}

internal struct ApplyEntitlementsSetToUserInput: GraphQLMapConvertible {
  internal var graphQLMap: GraphQLMap

  internal init(entitlementsSetName: String, externalId: String) {
    graphQLMap = ["entitlementsSetName": entitlementsSetName, "externalId": externalId]
  }

  internal var entitlementsSetName: String {
    get {
      return graphQLMap["entitlementsSetName"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "entitlementsSetName")
    }
  }

  internal var externalId: String {
    get {
      return graphQLMap["externalId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "externalId")
    }
  }
}

internal struct ApplyEntitlementsSetToUsersInput: GraphQLMapConvertible {
  internal var graphQLMap: GraphQLMap

  internal init(operations: [ApplyEntitlementsSetToUserInput]) {
    graphQLMap = ["operations": operations]
  }

  internal var operations: [ApplyEntitlementsSetToUserInput] {
    get {
      return graphQLMap["operations"] as! [ApplyEntitlementsSetToUserInput]
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "operations")
    }
  }
}

internal struct ApplyEntitlementsToUserInput: GraphQLMapConvertible {
  internal var graphQLMap: GraphQLMap

  internal init(entitlements: [EntitlementInput], externalId: String) {
    graphQLMap = ["entitlements": entitlements, "externalId": externalId]
  }

  internal var entitlements: [EntitlementInput] {
    get {
      return graphQLMap["entitlements"] as! [EntitlementInput]
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "entitlements")
    }
  }

  internal var externalId: String {
    get {
      return graphQLMap["externalId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "externalId")
    }
  }
}

internal struct ApplyEntitlementsToUsersInput: GraphQLMapConvertible {
  internal var graphQLMap: GraphQLMap

  internal init(operations: [ApplyEntitlementsToUserInput]) {
    graphQLMap = ["operations": operations]
  }

  internal var operations: [ApplyEntitlementsToUserInput] {
    get {
      return graphQLMap["operations"] as! [ApplyEntitlementsToUserInput]
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "operations")
    }
  }
}

internal enum AccountStates: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  internal typealias RawValue = String
  case active
  case locked
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  internal init?(rawValue: RawValue) {
    switch rawValue {
      case "ACTIVE": self = .active
      case "LOCKED": self = .locked
      default: self = .unknown(rawValue)
    }
  }

  internal var rawValue: RawValue {
    switch self {
      case .active: return "ACTIVE"
      case .locked: return "LOCKED"
      case .unknown(let value): return value
    }
  }

  internal static func == (lhs: AccountStates, rhs: AccountStates) -> Bool {
    switch (lhs, rhs) {
      case (.active, .active): return true
      case (.locked, .locked): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

internal struct GetEntitlementsForUserInput: GraphQLMapConvertible {
  internal var graphQLMap: GraphQLMap

  internal init(externalId: String) {
    graphQLMap = ["externalId": externalId]
  }

  internal var externalId: String {
    get {
      return graphQLMap["externalId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "externalId")
    }
  }
}

internal struct GetEntitlementsSequenceInput: GraphQLMapConvertible {
  internal var graphQLMap: GraphQLMap

  internal init(name: String) {
    graphQLMap = ["name": name]
  }

  internal var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }
}

internal struct GetEntitlementsSetInput: GraphQLMapConvertible {
  internal var graphQLMap: GraphQLMap

  internal init(name: String) {
    graphQLMap = ["name": name]
  }

  internal var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }
}

internal struct RemoveEntitledUserInput: GraphQLMapConvertible {
  internal var graphQLMap: GraphQLMap

  internal init(externalId: String) {
    graphQLMap = ["externalId": externalId]
  }

  internal var externalId: String {
    get {
      return graphQLMap["externalId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "externalId")
    }
  }
}

internal struct RemoveEntitlementsSequenceInput: GraphQLMapConvertible {
  internal var graphQLMap: GraphQLMap

  internal init(name: String) {
    graphQLMap = ["name": name]
  }

  internal var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }
}

internal struct RemoveEntitlementsSetInput: GraphQLMapConvertible {
  internal var graphQLMap: GraphQLMap

  internal init(name: String) {
    graphQLMap = ["name": name]
  }

  internal var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }
}

internal struct SetEntitlementsSequenceInput: GraphQLMapConvertible {
  internal var graphQLMap: GraphQLMap

  internal init(description: Optional<String?> = nil, name: String, transitions: [EntitlementsSequenceTransitionInput]) {
    graphQLMap = ["description": description, "name": name, "transitions": transitions]
  }

  internal var description: Optional<String?> {
    get {
      return graphQLMap["description"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  internal var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  internal var transitions: [EntitlementsSequenceTransitionInput] {
    get {
      return graphQLMap["transitions"] as! [EntitlementsSequenceTransitionInput]
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "transitions")
    }
  }
}

internal struct SetEntitlementsSetInput: GraphQLMapConvertible {
  internal var graphQLMap: GraphQLMap

  internal init(description: Optional<String?> = nil, entitlements: [EntitlementInput], name: String) {
    graphQLMap = ["description": description, "entitlements": entitlements, "name": name]
  }

  internal var description: Optional<String?> {
    get {
      return graphQLMap["description"] as! Optional<String?>
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  internal var entitlements: [EntitlementInput] {
    get {
      return graphQLMap["entitlements"] as! [EntitlementInput]
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "entitlements")
    }
  }

  internal var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }
}

internal final class AddEntitlementsSequenceMutation: GraphQLMutation {
  internal static let operationString =
    "mutation AddEntitlementsSequence($input: AddEntitlementsSequenceInput!) {\n  addEntitlementsSequence(input: $input) {\n    __typename\n    ...EntitlementsSequence\n  }\n}"

  internal static var requestString: String { return operationString.appending(EntitlementsSequence.fragmentString).appending(EntitlementsSequenceTransition.fragmentString) }

  internal var input: AddEntitlementsSequenceInput

  internal init(input: AddEntitlementsSequenceInput) {
    self.input = input
  }

  internal var variables: GraphQLMap? {
    return ["input": input]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Mutation"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("addEntitlementsSequence", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(AddEntitlementsSequence.selections))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(addEntitlementsSequence: AddEntitlementsSequence) {
      self.init(snapshot: ["__typename": "Mutation", "addEntitlementsSequence": addEntitlementsSequence.snapshot])
    }

    internal var addEntitlementsSequence: AddEntitlementsSequence {
      get {
        return AddEntitlementsSequence(snapshot: snapshot["addEntitlementsSequence"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "addEntitlementsSequence")
      }
    }

    internal struct AddEntitlementsSequence: GraphQLSelectionSet {
      internal static let possibleTypes = ["EntitlementsSequence"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("transitions", type: .nonNull(.list(.nonNull(.object(Transition.selections))))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(name: String, description: String? = nil, createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Int, transitions: [Transition]) {
        self.init(snapshot: ["__typename": "EntitlementsSequence", "name": name, "description": description, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "transitions": transitions.map { $0.snapshot }])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      internal var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      internal var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      internal var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      internal var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      internal var transitions: [Transition] {
        get {
          return (snapshot["transitions"] as! [Snapshot]).map { Transition(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "transitions")
        }
      }

      internal var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      internal struct Fragments {
        internal var snapshot: Snapshot

        internal var entitlementsSequence: EntitlementsSequence {
          get {
            return EntitlementsSequence(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      internal struct Transition: GraphQLSelectionSet {
        internal static let possibleTypes = ["EntitlementsSequenceTransition"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("entitlementsSetName", type: .nonNull(.scalar(String.self))),
          GraphQLField("duration", type: .scalar(String.self)),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(entitlementsSetName: String, duration: String? = nil) {
          self.init(snapshot: ["__typename": "EntitlementsSequenceTransition", "entitlementsSetName": entitlementsSetName, "duration": duration])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var entitlementsSetName: String {
          get {
            return snapshot["entitlementsSetName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "entitlementsSetName")
          }
        }

        internal var duration: String? {
          get {
            return snapshot["duration"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "duration")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var entitlementsSequenceTransition: EntitlementsSequenceTransition {
            get {
              return EntitlementsSequenceTransition(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }
      }
    }
  }
}

internal final class AddEntitlementsSetMutation: GraphQLMutation {
  internal static let operationString =
    "mutation AddEntitlementsSet($input: AddEntitlementsSetInput!) {\n  addEntitlementsSet(input: $input) {\n    __typename\n    ...EntitlementsSet\n  }\n}"

  internal static var requestString: String { return operationString.appending(EntitlementsSet.fragmentString).appending(Entitlement.fragmentString) }

  internal var input: AddEntitlementsSetInput

  internal init(input: AddEntitlementsSetInput) {
    self.input = input
  }

  internal var variables: GraphQLMap? {
    return ["input": input]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Mutation"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("addEntitlementsSet", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(AddEntitlementsSet.selections))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(addEntitlementsSet: AddEntitlementsSet) {
      self.init(snapshot: ["__typename": "Mutation", "addEntitlementsSet": addEntitlementsSet.snapshot])
    }

    internal var addEntitlementsSet: AddEntitlementsSet {
      get {
        return AddEntitlementsSet(snapshot: snapshot["addEntitlementsSet"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "addEntitlementsSet")
      }
    }

    internal struct AddEntitlementsSet: GraphQLSelectionSet {
      internal static let possibleTypes = ["EntitlementsSet"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("entitlements", type: .nonNull(.list(.nonNull(.object(Entitlement.selections))))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Int, name: String, description: String? = nil, entitlements: [Entitlement]) {
        self.init(snapshot: ["__typename": "EntitlementsSet", "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "name": name, "description": description, "entitlements": entitlements.map { $0.snapshot }])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      internal var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      internal var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      internal var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      internal var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      internal var entitlements: [Entitlement] {
        get {
          return (snapshot["entitlements"] as! [Snapshot]).map { Entitlement(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "entitlements")
        }
      }

      internal var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      internal struct Fragments {
        internal var snapshot: Snapshot

        internal var entitlementsSet: EntitlementsSet {
          get {
            return EntitlementsSet(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      internal struct Entitlement: GraphQLSelectionSet {
        internal static let possibleTypes = ["Entitlement"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("value", type: .nonNull(.scalar(Int.self))),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(name: String, description: String? = nil, value: Int) {
          self.init(snapshot: ["__typename": "Entitlement", "name": name, "description": description, "value": value])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        internal var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        internal var value: Int {
          get {
            return snapshot["value"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "value")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var entitlement: Entitlement {
            get {
              return Entitlement(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }
      }
    }
  }
}

internal final class ApplyEntitlementsSequenceToUserMutation: GraphQLMutation {
  internal static let operationString =
    "mutation ApplyEntitlementsSequenceToUser($input: ApplyEntitlementsSequenceToUserInput!) {\n  applyEntitlementsSequenceToUser(input: $input) {\n    __typename\n    ...ExternalUserEntitlements\n  }\n}"

  internal static var requestString: String { return operationString.appending(ExternalUserEntitlements.fragmentString).appending(Entitlement.fragmentString) }

  internal var input: ApplyEntitlementsSequenceToUserInput

  internal init(input: ApplyEntitlementsSequenceToUserInput) {
    self.input = input
  }

  internal var variables: GraphQLMap? {
    return ["input": input]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Mutation"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("applyEntitlementsSequenceToUser", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(ApplyEntitlementsSequenceToUser.selections))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(applyEntitlementsSequenceToUser: ApplyEntitlementsSequenceToUser) {
      self.init(snapshot: ["__typename": "Mutation", "applyEntitlementsSequenceToUser": applyEntitlementsSequenceToUser.snapshot])
    }

    internal var applyEntitlementsSequenceToUser: ApplyEntitlementsSequenceToUser {
      get {
        return ApplyEntitlementsSequenceToUser(snapshot: snapshot["applyEntitlementsSequenceToUser"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "applyEntitlementsSequenceToUser")
      }
    }

    internal struct ApplyEntitlementsSequenceToUser: GraphQLSelectionSet {
      internal static let possibleTypes = ["ExternalUserEntitlements"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
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

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Double, externalId: String, owner: String? = nil, accountState: AccountStates? = nil, entitlementsSetName: String? = nil, entitlementsSequenceName: String? = nil, entitlements: [Entitlement], transitionsRelativeToEpochMs: Double? = nil) {
        self.init(snapshot: ["__typename": "ExternalUserEntitlements", "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "externalId": externalId, "owner": owner, "accountState": accountState, "entitlementsSetName": entitlementsSetName, "entitlementsSequenceName": entitlementsSequenceName, "entitlements": entitlements.map { $0.snapshot }, "transitionsRelativeToEpochMs": transitionsRelativeToEpochMs])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      internal var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      internal var version: Double {
        get {
          return snapshot["version"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      internal var externalId: String {
        get {
          return snapshot["externalId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "externalId")
        }
      }

      internal var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }

      internal var accountState: AccountStates? {
        get {
          return snapshot["accountState"] as? AccountStates
        }
        set {
          snapshot.updateValue(newValue, forKey: "accountState")
        }
      }

      internal var entitlementsSetName: String? {
        get {
          return snapshot["entitlementsSetName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "entitlementsSetName")
        }
      }

      internal var entitlementsSequenceName: String? {
        get {
          return snapshot["entitlementsSequenceName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "entitlementsSequenceName")
        }
      }

      internal var entitlements: [Entitlement] {
        get {
          return (snapshot["entitlements"] as! [Snapshot]).map { Entitlement(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "entitlements")
        }
      }

      internal var transitionsRelativeToEpochMs: Double? {
        get {
          return snapshot["transitionsRelativeToEpochMs"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "transitionsRelativeToEpochMs")
        }
      }

      internal var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      internal struct Fragments {
        internal var snapshot: Snapshot

        internal var externalUserEntitlements: ExternalUserEntitlements {
          get {
            return ExternalUserEntitlements(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      internal struct Entitlement: GraphQLSelectionSet {
        internal static let possibleTypes = ["Entitlement"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("value", type: .nonNull(.scalar(Int.self))),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(name: String, description: String? = nil, value: Int) {
          self.init(snapshot: ["__typename": "Entitlement", "name": name, "description": description, "value": value])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        internal var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        internal var value: Int {
          get {
            return snapshot["value"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "value")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var entitlement: Entitlement {
            get {
              return Entitlement(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }
      }
    }
  }
}

internal final class ApplyEntitlementsSequenceToUsersMutation: GraphQLMutation {
  internal static let operationString =
    "mutation ApplyEntitlementsSequenceToUsers($input: ApplyEntitlementsSequenceToUsersInput!) {\n  applyEntitlementsSequenceToUsers(input: $input) {\n    __typename\n    ... on ExternalUserEntitlements {\n      ...ExternalUserEntitlements\n    }\n    ... on ExternalUserEntitlementsError {\n      ...ExternalUserEntitlementsError\n    }\n  }\n}"

  internal static var requestString: String { return operationString.appending(ExternalUserEntitlements.fragmentString).appending(Entitlement.fragmentString).appending(ExternalUserEntitlementsError.fragmentString) }

  internal var input: ApplyEntitlementsSequenceToUsersInput

  internal init(input: ApplyEntitlementsSequenceToUsersInput) {
    self.input = input
  }

  internal var variables: GraphQLMap? {
    return ["input": input]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Mutation"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("applyEntitlementsSequenceToUsers", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.list(.nonNull(.object(ApplyEntitlementsSequenceToUser.selections))))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(applyEntitlementsSequenceToUsers: [ApplyEntitlementsSequenceToUser]) {
      self.init(snapshot: ["__typename": "Mutation", "applyEntitlementsSequenceToUsers": applyEntitlementsSequenceToUsers.map { $0.snapshot }])
    }

    internal var applyEntitlementsSequenceToUsers: [ApplyEntitlementsSequenceToUser] {
      get {
        return (snapshot["applyEntitlementsSequenceToUsers"] as! [Snapshot]).map { ApplyEntitlementsSequenceToUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "applyEntitlementsSequenceToUsers")
      }
    }

    internal struct ApplyEntitlementsSequenceToUser: GraphQLSelectionSet {
      internal static let possibleTypes = ["ExternalUserEntitlements", "ExternalUserEntitlementsError"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLTypeCase(
          variants: ["ExternalUserEntitlements": AsExternalUserEntitlements.selections, "ExternalUserEntitlementsError": AsExternalUserEntitlementsError.selections],
          default: [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          ]
        )
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal static func makeExternalUserEntitlements(createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Double, externalId: String, owner: String? = nil, accountState: AccountStates? = nil, entitlementsSetName: String? = nil, entitlementsSequenceName: String? = nil, entitlements: [AsExternalUserEntitlements.Entitlement], transitionsRelativeToEpochMs: Double? = nil) -> ApplyEntitlementsSequenceToUser {
        return ApplyEntitlementsSequenceToUser(snapshot: ["__typename": "ExternalUserEntitlements", "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "externalId": externalId, "owner": owner, "accountState": accountState, "entitlementsSetName": entitlementsSetName, "entitlementsSequenceName": entitlementsSequenceName, "entitlements": entitlements.map { $0.snapshot }, "transitionsRelativeToEpochMs": transitionsRelativeToEpochMs])
      }

      internal static func makeExternalUserEntitlementsError(error: String) -> ApplyEntitlementsSequenceToUser {
        return ApplyEntitlementsSequenceToUser(snapshot: ["__typename": "ExternalUserEntitlementsError", "error": error])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var asExternalUserEntitlements: AsExternalUserEntitlements? {
        get {
          if !AsExternalUserEntitlements.possibleTypes.contains(__typename) { return nil }
          return AsExternalUserEntitlements(snapshot: snapshot)
        }
        set {
          guard let newValue = newValue else { return }
          snapshot = newValue.snapshot
        }
      }

      internal struct AsExternalUserEntitlements: GraphQLSelectionSet {
        internal static let possibleTypes = ["ExternalUserEntitlements"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
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

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Double, externalId: String, owner: String? = nil, accountState: AccountStates? = nil, entitlementsSetName: String? = nil, entitlementsSequenceName: String? = nil, entitlements: [Entitlement], transitionsRelativeToEpochMs: Double? = nil) {
          self.init(snapshot: ["__typename": "ExternalUserEntitlements", "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "externalId": externalId, "owner": owner, "accountState": accountState, "entitlementsSetName": entitlementsSetName, "entitlementsSequenceName": entitlementsSequenceName, "entitlements": entitlements.map { $0.snapshot }, "transitionsRelativeToEpochMs": transitionsRelativeToEpochMs])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var createdAtEpochMs: Double {
          get {
            return snapshot["createdAtEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
          }
        }

        internal var updatedAtEpochMs: Double {
          get {
            return snapshot["updatedAtEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
          }
        }

        internal var version: Double {
          get {
            return snapshot["version"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "version")
          }
        }

        internal var externalId: String {
          get {
            return snapshot["externalId"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "externalId")
          }
        }

        internal var owner: String? {
          get {
            return snapshot["owner"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "owner")
          }
        }

        internal var accountState: AccountStates? {
          get {
            return snapshot["accountState"] as? AccountStates
          }
          set {
            snapshot.updateValue(newValue, forKey: "accountState")
          }
        }

        internal var entitlementsSetName: String? {
          get {
            return snapshot["entitlementsSetName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "entitlementsSetName")
          }
        }

        internal var entitlementsSequenceName: String? {
          get {
            return snapshot["entitlementsSequenceName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "entitlementsSequenceName")
          }
        }

        internal var entitlements: [Entitlement] {
          get {
            return (snapshot["entitlements"] as! [Snapshot]).map { Entitlement(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "entitlements")
          }
        }

        internal var transitionsRelativeToEpochMs: Double? {
          get {
            return snapshot["transitionsRelativeToEpochMs"] as? Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "transitionsRelativeToEpochMs")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var externalUserEntitlements: ExternalUserEntitlements {
            get {
              return ExternalUserEntitlements(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }

        internal struct Entitlement: GraphQLSelectionSet {
          internal static let possibleTypes = ["Entitlement"]

          internal static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("description", type: .scalar(String.self)),
            GraphQLField("value", type: .nonNull(.scalar(Int.self))),
          ]

          internal var snapshot: Snapshot

          internal init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          internal init(name: String, description: String? = nil, value: Int) {
            self.init(snapshot: ["__typename": "Entitlement", "name": name, "description": description, "value": value])
          }

          internal var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          internal var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          internal var description: String? {
            get {
              return snapshot["description"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "description")
            }
          }

          internal var value: Int {
            get {
              return snapshot["value"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "value")
            }
          }

          internal var fragments: Fragments {
            get {
              return Fragments(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }

          internal struct Fragments {
            internal var snapshot: Snapshot

            internal var entitlement: Entitlement {
              get {
                return Entitlement(snapshot: snapshot)
              }
              set {
                snapshot += newValue.snapshot
              }
            }
          }
        }
      }

      internal var asExternalUserEntitlementsError: AsExternalUserEntitlementsError? {
        get {
          if !AsExternalUserEntitlementsError.possibleTypes.contains(__typename) { return nil }
          return AsExternalUserEntitlementsError(snapshot: snapshot)
        }
        set {
          guard let newValue = newValue else { return }
          snapshot = newValue.snapshot
        }
      }

      internal struct AsExternalUserEntitlementsError: GraphQLSelectionSet {
        internal static let possibleTypes = ["ExternalUserEntitlementsError"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("error", type: .nonNull(.scalar(String.self))),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(error: String) {
          self.init(snapshot: ["__typename": "ExternalUserEntitlementsError", "error": error])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var error: String {
          get {
            return snapshot["error"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "error")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var externalUserEntitlementsError: ExternalUserEntitlementsError {
            get {
              return ExternalUserEntitlementsError(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }
      }
    }
  }
}

internal final class ApplyEntitlementsSetToUserMutation: GraphQLMutation {
  internal static let operationString =
    "mutation ApplyEntitlementsSetToUser($input: ApplyEntitlementsSetToUserInput!) {\n  applyEntitlementsSetToUser(input: $input) {\n    __typename\n    ...ExternalUserEntitlements\n  }\n}"

  internal static var requestString: String { return operationString.appending(ExternalUserEntitlements.fragmentString).appending(Entitlement.fragmentString) }

  internal var input: ApplyEntitlementsSetToUserInput

  internal init(input: ApplyEntitlementsSetToUserInput) {
    self.input = input
  }

  internal var variables: GraphQLMap? {
    return ["input": input]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Mutation"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("applyEntitlementsSetToUser", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(ApplyEntitlementsSetToUser.selections))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(applyEntitlementsSetToUser: ApplyEntitlementsSetToUser) {
      self.init(snapshot: ["__typename": "Mutation", "applyEntitlementsSetToUser": applyEntitlementsSetToUser.snapshot])
    }

    internal var applyEntitlementsSetToUser: ApplyEntitlementsSetToUser {
      get {
        return ApplyEntitlementsSetToUser(snapshot: snapshot["applyEntitlementsSetToUser"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "applyEntitlementsSetToUser")
      }
    }

    internal struct ApplyEntitlementsSetToUser: GraphQLSelectionSet {
      internal static let possibleTypes = ["ExternalUserEntitlements"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
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

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Double, externalId: String, owner: String? = nil, accountState: AccountStates? = nil, entitlementsSetName: String? = nil, entitlementsSequenceName: String? = nil, entitlements: [Entitlement], transitionsRelativeToEpochMs: Double? = nil) {
        self.init(snapshot: ["__typename": "ExternalUserEntitlements", "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "externalId": externalId, "owner": owner, "accountState": accountState, "entitlementsSetName": entitlementsSetName, "entitlementsSequenceName": entitlementsSequenceName, "entitlements": entitlements.map { $0.snapshot }, "transitionsRelativeToEpochMs": transitionsRelativeToEpochMs])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      internal var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      internal var version: Double {
        get {
          return snapshot["version"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      internal var externalId: String {
        get {
          return snapshot["externalId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "externalId")
        }
      }

      internal var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }

      internal var accountState: AccountStates? {
        get {
          return snapshot["accountState"] as? AccountStates
        }
        set {
          snapshot.updateValue(newValue, forKey: "accountState")
        }
      }

      internal var entitlementsSetName: String? {
        get {
          return snapshot["entitlementsSetName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "entitlementsSetName")
        }
      }

      internal var entitlementsSequenceName: String? {
        get {
          return snapshot["entitlementsSequenceName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "entitlementsSequenceName")
        }
      }

      internal var entitlements: [Entitlement] {
        get {
          return (snapshot["entitlements"] as! [Snapshot]).map { Entitlement(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "entitlements")
        }
      }

      internal var transitionsRelativeToEpochMs: Double? {
        get {
          return snapshot["transitionsRelativeToEpochMs"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "transitionsRelativeToEpochMs")
        }
      }

      internal var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      internal struct Fragments {
        internal var snapshot: Snapshot

        internal var externalUserEntitlements: ExternalUserEntitlements {
          get {
            return ExternalUserEntitlements(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      internal struct Entitlement: GraphQLSelectionSet {
        internal static let possibleTypes = ["Entitlement"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("value", type: .nonNull(.scalar(Int.self))),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(name: String, description: String? = nil, value: Int) {
          self.init(snapshot: ["__typename": "Entitlement", "name": name, "description": description, "value": value])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        internal var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        internal var value: Int {
          get {
            return snapshot["value"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "value")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var entitlement: Entitlement {
            get {
              return Entitlement(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }
      }
    }
  }
}

internal final class ApplyEntitlementsSetToUsersMutation: GraphQLMutation {
  internal static let operationString =
    "mutation ApplyEntitlementsSetToUsers($input: ApplyEntitlementsSetToUsersInput!) {\n  applyEntitlementsSetToUsers(input: $input) {\n    __typename\n    ... on ExternalUserEntitlements {\n      ...ExternalUserEntitlements\n    }\n    ... on ExternalUserEntitlementsError {\n      ...ExternalUserEntitlementsError\n    }\n  }\n}"

  internal static var requestString: String { return operationString.appending(ExternalUserEntitlements.fragmentString).appending(Entitlement.fragmentString).appending(ExternalUserEntitlementsError.fragmentString) }

  internal var input: ApplyEntitlementsSetToUsersInput

  internal init(input: ApplyEntitlementsSetToUsersInput) {
    self.input = input
  }

  internal var variables: GraphQLMap? {
    return ["input": input]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Mutation"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("applyEntitlementsSetToUsers", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.list(.nonNull(.object(ApplyEntitlementsSetToUser.selections))))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(applyEntitlementsSetToUsers: [ApplyEntitlementsSetToUser]) {
      self.init(snapshot: ["__typename": "Mutation", "applyEntitlementsSetToUsers": applyEntitlementsSetToUsers.map { $0.snapshot }])
    }

    internal var applyEntitlementsSetToUsers: [ApplyEntitlementsSetToUser] {
      get {
        return (snapshot["applyEntitlementsSetToUsers"] as! [Snapshot]).map { ApplyEntitlementsSetToUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "applyEntitlementsSetToUsers")
      }
    }

    internal struct ApplyEntitlementsSetToUser: GraphQLSelectionSet {
      internal static let possibleTypes = ["ExternalUserEntitlements", "ExternalUserEntitlementsError"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLTypeCase(
          variants: ["ExternalUserEntitlements": AsExternalUserEntitlements.selections, "ExternalUserEntitlementsError": AsExternalUserEntitlementsError.selections],
          default: [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          ]
        )
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal static func makeExternalUserEntitlements(createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Double, externalId: String, owner: String? = nil, accountState: AccountStates? = nil, entitlementsSetName: String? = nil, entitlementsSequenceName: String? = nil, entitlements: [AsExternalUserEntitlements.Entitlement], transitionsRelativeToEpochMs: Double? = nil) -> ApplyEntitlementsSetToUser {
        return ApplyEntitlementsSetToUser(snapshot: ["__typename": "ExternalUserEntitlements", "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "externalId": externalId, "owner": owner, "accountState": accountState, "entitlementsSetName": entitlementsSetName, "entitlementsSequenceName": entitlementsSequenceName, "entitlements": entitlements.map { $0.snapshot }, "transitionsRelativeToEpochMs": transitionsRelativeToEpochMs])
      }

      internal static func makeExternalUserEntitlementsError(error: String) -> ApplyEntitlementsSetToUser {
        return ApplyEntitlementsSetToUser(snapshot: ["__typename": "ExternalUserEntitlementsError", "error": error])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var asExternalUserEntitlements: AsExternalUserEntitlements? {
        get {
          if !AsExternalUserEntitlements.possibleTypes.contains(__typename) { return nil }
          return AsExternalUserEntitlements(snapshot: snapshot)
        }
        set {
          guard let newValue = newValue else { return }
          snapshot = newValue.snapshot
        }
      }

      internal struct AsExternalUserEntitlements: GraphQLSelectionSet {
        internal static let possibleTypes = ["ExternalUserEntitlements"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
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

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Double, externalId: String, owner: String? = nil, accountState: AccountStates? = nil, entitlementsSetName: String? = nil, entitlementsSequenceName: String? = nil, entitlements: [Entitlement], transitionsRelativeToEpochMs: Double? = nil) {
          self.init(snapshot: ["__typename": "ExternalUserEntitlements", "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "externalId": externalId, "owner": owner, "accountState": accountState, "entitlementsSetName": entitlementsSetName, "entitlementsSequenceName": entitlementsSequenceName, "entitlements": entitlements.map { $0.snapshot }, "transitionsRelativeToEpochMs": transitionsRelativeToEpochMs])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var createdAtEpochMs: Double {
          get {
            return snapshot["createdAtEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
          }
        }

        internal var updatedAtEpochMs: Double {
          get {
            return snapshot["updatedAtEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
          }
        }

        internal var version: Double {
          get {
            return snapshot["version"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "version")
          }
        }

        internal var externalId: String {
          get {
            return snapshot["externalId"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "externalId")
          }
        }

        internal var owner: String? {
          get {
            return snapshot["owner"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "owner")
          }
        }

        internal var accountState: AccountStates? {
          get {
            return snapshot["accountState"] as? AccountStates
          }
          set {
            snapshot.updateValue(newValue, forKey: "accountState")
          }
        }

        internal var entitlementsSetName: String? {
          get {
            return snapshot["entitlementsSetName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "entitlementsSetName")
          }
        }

        internal var entitlementsSequenceName: String? {
          get {
            return snapshot["entitlementsSequenceName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "entitlementsSequenceName")
          }
        }

        internal var entitlements: [Entitlement] {
          get {
            return (snapshot["entitlements"] as! [Snapshot]).map { Entitlement(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "entitlements")
          }
        }

        internal var transitionsRelativeToEpochMs: Double? {
          get {
            return snapshot["transitionsRelativeToEpochMs"] as? Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "transitionsRelativeToEpochMs")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var externalUserEntitlements: ExternalUserEntitlements {
            get {
              return ExternalUserEntitlements(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }

        internal struct Entitlement: GraphQLSelectionSet {
          internal static let possibleTypes = ["Entitlement"]

          internal static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("description", type: .scalar(String.self)),
            GraphQLField("value", type: .nonNull(.scalar(Int.self))),
          ]

          internal var snapshot: Snapshot

          internal init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          internal init(name: String, description: String? = nil, value: Int) {
            self.init(snapshot: ["__typename": "Entitlement", "name": name, "description": description, "value": value])
          }

          internal var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          internal var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          internal var description: String? {
            get {
              return snapshot["description"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "description")
            }
          }

          internal var value: Int {
            get {
              return snapshot["value"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "value")
            }
          }

          internal var fragments: Fragments {
            get {
              return Fragments(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }

          internal struct Fragments {
            internal var snapshot: Snapshot

            internal var entitlement: Entitlement {
              get {
                return Entitlement(snapshot: snapshot)
              }
              set {
                snapshot += newValue.snapshot
              }
            }
          }
        }
      }

      internal var asExternalUserEntitlementsError: AsExternalUserEntitlementsError? {
        get {
          if !AsExternalUserEntitlementsError.possibleTypes.contains(__typename) { return nil }
          return AsExternalUserEntitlementsError(snapshot: snapshot)
        }
        set {
          guard let newValue = newValue else { return }
          snapshot = newValue.snapshot
        }
      }

      internal struct AsExternalUserEntitlementsError: GraphQLSelectionSet {
        internal static let possibleTypes = ["ExternalUserEntitlementsError"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("error", type: .nonNull(.scalar(String.self))),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(error: String) {
          self.init(snapshot: ["__typename": "ExternalUserEntitlementsError", "error": error])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var error: String {
          get {
            return snapshot["error"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "error")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var externalUserEntitlementsError: ExternalUserEntitlementsError {
            get {
              return ExternalUserEntitlementsError(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }
      }
    }
  }
}

internal final class ApplyEntitlementsToUserMutation: GraphQLMutation {
  internal static let operationString =
    "mutation ApplyEntitlementsToUser($input: ApplyEntitlementsToUserInput!) {\n  applyEntitlementsToUser(input: $input) {\n    __typename\n    ...ExternalUserEntitlements\n  }\n}"

  internal static var requestString: String { return operationString.appending(ExternalUserEntitlements.fragmentString).appending(Entitlement.fragmentString) }

  internal var input: ApplyEntitlementsToUserInput

  internal init(input: ApplyEntitlementsToUserInput) {
    self.input = input
  }

  internal var variables: GraphQLMap? {
    return ["input": input]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Mutation"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("applyEntitlementsToUser", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(ApplyEntitlementsToUser.selections))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(applyEntitlementsToUser: ApplyEntitlementsToUser) {
      self.init(snapshot: ["__typename": "Mutation", "applyEntitlementsToUser": applyEntitlementsToUser.snapshot])
    }

    internal var applyEntitlementsToUser: ApplyEntitlementsToUser {
      get {
        return ApplyEntitlementsToUser(snapshot: snapshot["applyEntitlementsToUser"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "applyEntitlementsToUser")
      }
    }

    internal struct ApplyEntitlementsToUser: GraphQLSelectionSet {
      internal static let possibleTypes = ["ExternalUserEntitlements"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
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

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Double, externalId: String, owner: String? = nil, accountState: AccountStates? = nil, entitlementsSetName: String? = nil, entitlementsSequenceName: String? = nil, entitlements: [Entitlement], transitionsRelativeToEpochMs: Double? = nil) {
        self.init(snapshot: ["__typename": "ExternalUserEntitlements", "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "externalId": externalId, "owner": owner, "accountState": accountState, "entitlementsSetName": entitlementsSetName, "entitlementsSequenceName": entitlementsSequenceName, "entitlements": entitlements.map { $0.snapshot }, "transitionsRelativeToEpochMs": transitionsRelativeToEpochMs])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      internal var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      internal var version: Double {
        get {
          return snapshot["version"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      internal var externalId: String {
        get {
          return snapshot["externalId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "externalId")
        }
      }

      internal var owner: String? {
        get {
          return snapshot["owner"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }

      internal var accountState: AccountStates? {
        get {
          return snapshot["accountState"] as? AccountStates
        }
        set {
          snapshot.updateValue(newValue, forKey: "accountState")
        }
      }

      internal var entitlementsSetName: String? {
        get {
          return snapshot["entitlementsSetName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "entitlementsSetName")
        }
      }

      internal var entitlementsSequenceName: String? {
        get {
          return snapshot["entitlementsSequenceName"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "entitlementsSequenceName")
        }
      }

      internal var entitlements: [Entitlement] {
        get {
          return (snapshot["entitlements"] as! [Snapshot]).map { Entitlement(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "entitlements")
        }
      }

      internal var transitionsRelativeToEpochMs: Double? {
        get {
          return snapshot["transitionsRelativeToEpochMs"] as? Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "transitionsRelativeToEpochMs")
        }
      }

      internal var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      internal struct Fragments {
        internal var snapshot: Snapshot

        internal var externalUserEntitlements: ExternalUserEntitlements {
          get {
            return ExternalUserEntitlements(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      internal struct Entitlement: GraphQLSelectionSet {
        internal static let possibleTypes = ["Entitlement"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("value", type: .nonNull(.scalar(Int.self))),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(name: String, description: String? = nil, value: Int) {
          self.init(snapshot: ["__typename": "Entitlement", "name": name, "description": description, "value": value])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        internal var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        internal var value: Int {
          get {
            return snapshot["value"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "value")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var entitlement: Entitlement {
            get {
              return Entitlement(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }
      }
    }
  }
}

internal final class ApplyEntitlementsToUsersMutation: GraphQLMutation {
  internal static let operationString =
    "mutation ApplyEntitlementsToUsers($input: ApplyEntitlementsToUsersInput!) {\n  applyEntitlementsToUsers(input: $input) {\n    __typename\n    ... on ExternalUserEntitlements {\n      ...ExternalUserEntitlements\n    }\n    ... on ExternalUserEntitlementsError {\n      ...ExternalUserEntitlementsError\n    }\n  }\n}"

  internal static var requestString: String { return operationString.appending(ExternalUserEntitlements.fragmentString).appending(Entitlement.fragmentString).appending(ExternalUserEntitlementsError.fragmentString) }

  internal var input: ApplyEntitlementsToUsersInput

  internal init(input: ApplyEntitlementsToUsersInput) {
    self.input = input
  }

  internal var variables: GraphQLMap? {
    return ["input": input]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Mutation"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("applyEntitlementsToUsers", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.list(.nonNull(.object(ApplyEntitlementsToUser.selections))))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(applyEntitlementsToUsers: [ApplyEntitlementsToUser]) {
      self.init(snapshot: ["__typename": "Mutation", "applyEntitlementsToUsers": applyEntitlementsToUsers.map { $0.snapshot }])
    }

    internal var applyEntitlementsToUsers: [ApplyEntitlementsToUser] {
      get {
        return (snapshot["applyEntitlementsToUsers"] as! [Snapshot]).map { ApplyEntitlementsToUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "applyEntitlementsToUsers")
      }
    }

    internal struct ApplyEntitlementsToUser: GraphQLSelectionSet {
      internal static let possibleTypes = ["ExternalUserEntitlements", "ExternalUserEntitlementsError"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLTypeCase(
          variants: ["ExternalUserEntitlements": AsExternalUserEntitlements.selections, "ExternalUserEntitlementsError": AsExternalUserEntitlementsError.selections],
          default: [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          ]
        )
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal static func makeExternalUserEntitlements(createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Double, externalId: String, owner: String? = nil, accountState: AccountStates? = nil, entitlementsSetName: String? = nil, entitlementsSequenceName: String? = nil, entitlements: [AsExternalUserEntitlements.Entitlement], transitionsRelativeToEpochMs: Double? = nil) -> ApplyEntitlementsToUser {
        return ApplyEntitlementsToUser(snapshot: ["__typename": "ExternalUserEntitlements", "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "externalId": externalId, "owner": owner, "accountState": accountState, "entitlementsSetName": entitlementsSetName, "entitlementsSequenceName": entitlementsSequenceName, "entitlements": entitlements.map { $0.snapshot }, "transitionsRelativeToEpochMs": transitionsRelativeToEpochMs])
      }

      internal static func makeExternalUserEntitlementsError(error: String) -> ApplyEntitlementsToUser {
        return ApplyEntitlementsToUser(snapshot: ["__typename": "ExternalUserEntitlementsError", "error": error])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var asExternalUserEntitlements: AsExternalUserEntitlements? {
        get {
          if !AsExternalUserEntitlements.possibleTypes.contains(__typename) { return nil }
          return AsExternalUserEntitlements(snapshot: snapshot)
        }
        set {
          guard let newValue = newValue else { return }
          snapshot = newValue.snapshot
        }
      }

      internal struct AsExternalUserEntitlements: GraphQLSelectionSet {
        internal static let possibleTypes = ["ExternalUserEntitlements"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
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

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Double, externalId: String, owner: String? = nil, accountState: AccountStates? = nil, entitlementsSetName: String? = nil, entitlementsSequenceName: String? = nil, entitlements: [Entitlement], transitionsRelativeToEpochMs: Double? = nil) {
          self.init(snapshot: ["__typename": "ExternalUserEntitlements", "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "externalId": externalId, "owner": owner, "accountState": accountState, "entitlementsSetName": entitlementsSetName, "entitlementsSequenceName": entitlementsSequenceName, "entitlements": entitlements.map { $0.snapshot }, "transitionsRelativeToEpochMs": transitionsRelativeToEpochMs])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var createdAtEpochMs: Double {
          get {
            return snapshot["createdAtEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
          }
        }

        internal var updatedAtEpochMs: Double {
          get {
            return snapshot["updatedAtEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
          }
        }

        internal var version: Double {
          get {
            return snapshot["version"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "version")
          }
        }

        internal var externalId: String {
          get {
            return snapshot["externalId"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "externalId")
          }
        }

        internal var owner: String? {
          get {
            return snapshot["owner"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "owner")
          }
        }

        internal var accountState: AccountStates? {
          get {
            return snapshot["accountState"] as? AccountStates
          }
          set {
            snapshot.updateValue(newValue, forKey: "accountState")
          }
        }

        internal var entitlementsSetName: String? {
          get {
            return snapshot["entitlementsSetName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "entitlementsSetName")
          }
        }

        internal var entitlementsSequenceName: String? {
          get {
            return snapshot["entitlementsSequenceName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "entitlementsSequenceName")
          }
        }

        internal var entitlements: [Entitlement] {
          get {
            return (snapshot["entitlements"] as! [Snapshot]).map { Entitlement(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "entitlements")
          }
        }

        internal var transitionsRelativeToEpochMs: Double? {
          get {
            return snapshot["transitionsRelativeToEpochMs"] as? Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "transitionsRelativeToEpochMs")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var externalUserEntitlements: ExternalUserEntitlements {
            get {
              return ExternalUserEntitlements(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }

        internal struct Entitlement: GraphQLSelectionSet {
          internal static let possibleTypes = ["Entitlement"]

          internal static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("description", type: .scalar(String.self)),
            GraphQLField("value", type: .nonNull(.scalar(Int.self))),
          ]

          internal var snapshot: Snapshot

          internal init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          internal init(name: String, description: String? = nil, value: Int) {
            self.init(snapshot: ["__typename": "Entitlement", "name": name, "description": description, "value": value])
          }

          internal var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          internal var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          internal var description: String? {
            get {
              return snapshot["description"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "description")
            }
          }

          internal var value: Int {
            get {
              return snapshot["value"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "value")
            }
          }

          internal var fragments: Fragments {
            get {
              return Fragments(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }

          internal struct Fragments {
            internal var snapshot: Snapshot

            internal var entitlement: Entitlement {
              get {
                return Entitlement(snapshot: snapshot)
              }
              set {
                snapshot += newValue.snapshot
              }
            }
          }
        }
      }

      internal var asExternalUserEntitlementsError: AsExternalUserEntitlementsError? {
        get {
          if !AsExternalUserEntitlementsError.possibleTypes.contains(__typename) { return nil }
          return AsExternalUserEntitlementsError(snapshot: snapshot)
        }
        set {
          guard let newValue = newValue else { return }
          snapshot = newValue.snapshot
        }
      }

      internal struct AsExternalUserEntitlementsError: GraphQLSelectionSet {
        internal static let possibleTypes = ["ExternalUserEntitlementsError"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("error", type: .nonNull(.scalar(String.self))),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(error: String) {
          self.init(snapshot: ["__typename": "ExternalUserEntitlementsError", "error": error])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var error: String {
          get {
            return snapshot["error"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "error")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var externalUserEntitlementsError: ExternalUserEntitlementsError {
            get {
              return ExternalUserEntitlementsError(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }
      }
    }
  }
}

internal final class GetEntitlementsForUserQuery: GraphQLQuery {
  internal static let operationString =
    "query GetEntitlementsForUser($input: GetEntitlementsForUserInput!) {\n  getEntitlementsForUser(input: $input) {\n    __typename\n    ...ExternalEntitlementsConsumption\n  }\n}"

  internal static var requestString: String { return operationString.appending(ExternalEntitlementsConsumption.fragmentString).appending(ExternalUserEntitlements.fragmentString).appending(Entitlement.fragmentString).appending(EntitlementConsumption.fragmentString) }

  internal var input: GetEntitlementsForUserInput

  internal init(input: GetEntitlementsForUserInput) {
    self.input = input
  }

  internal var variables: GraphQLMap? {
    return ["input": input]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Query"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("getEntitlementsForUser", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(GetEntitlementsForUser.selections))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(getEntitlementsForUser: GetEntitlementsForUser) {
      self.init(snapshot: ["__typename": "Query", "getEntitlementsForUser": getEntitlementsForUser.snapshot])
    }

    internal var getEntitlementsForUser: GetEntitlementsForUser {
      get {
        return GetEntitlementsForUser(snapshot: snapshot["getEntitlementsForUser"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "getEntitlementsForUser")
      }
    }

    internal struct GetEntitlementsForUser: GraphQLSelectionSet {
      internal static let possibleTypes = ["ExternalEntitlementsConsumption"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("entitlements", type: .nonNull(.object(Entitlement.selections))),
        GraphQLField("consumption", type: .nonNull(.list(.nonNull(.object(Consumption.selections))))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(entitlements: Entitlement, consumption: [Consumption]) {
        self.init(snapshot: ["__typename": "ExternalEntitlementsConsumption", "entitlements": entitlements.snapshot, "consumption": consumption.map { $0.snapshot }])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var entitlements: Entitlement {
        get {
          return Entitlement(snapshot: snapshot["entitlements"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "entitlements")
        }
      }

      internal var consumption: [Consumption] {
        get {
          return (snapshot["consumption"] as! [Snapshot]).map { Consumption(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "consumption")
        }
      }

      internal var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      internal struct Fragments {
        internal var snapshot: Snapshot

        internal var externalEntitlementsConsumption: ExternalEntitlementsConsumption {
          get {
            return ExternalEntitlementsConsumption(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      internal struct Entitlement: GraphQLSelectionSet {
        internal static let possibleTypes = ["ExternalUserEntitlements"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
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

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Double, externalId: String, owner: String? = nil, accountState: AccountStates? = nil, entitlementsSetName: String? = nil, entitlementsSequenceName: String? = nil, entitlements: [Entitlement], transitionsRelativeToEpochMs: Double? = nil) {
          self.init(snapshot: ["__typename": "ExternalUserEntitlements", "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "externalId": externalId, "owner": owner, "accountState": accountState, "entitlementsSetName": entitlementsSetName, "entitlementsSequenceName": entitlementsSequenceName, "entitlements": entitlements.map { $0.snapshot }, "transitionsRelativeToEpochMs": transitionsRelativeToEpochMs])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var createdAtEpochMs: Double {
          get {
            return snapshot["createdAtEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
          }
        }

        internal var updatedAtEpochMs: Double {
          get {
            return snapshot["updatedAtEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
          }
        }

        internal var version: Double {
          get {
            return snapshot["version"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "version")
          }
        }

        internal var externalId: String {
          get {
            return snapshot["externalId"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "externalId")
          }
        }

        internal var owner: String? {
          get {
            return snapshot["owner"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "owner")
          }
        }

        internal var accountState: AccountStates? {
          get {
            return snapshot["accountState"] as? AccountStates
          }
          set {
            snapshot.updateValue(newValue, forKey: "accountState")
          }
        }

        internal var entitlementsSetName: String? {
          get {
            return snapshot["entitlementsSetName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "entitlementsSetName")
          }
        }

        internal var entitlementsSequenceName: String? {
          get {
            return snapshot["entitlementsSequenceName"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "entitlementsSequenceName")
          }
        }

        internal var entitlements: [Entitlement] {
          get {
            return (snapshot["entitlements"] as! [Snapshot]).map { Entitlement(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "entitlements")
          }
        }

        internal var transitionsRelativeToEpochMs: Double? {
          get {
            return snapshot["transitionsRelativeToEpochMs"] as? Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "transitionsRelativeToEpochMs")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var externalUserEntitlements: ExternalUserEntitlements {
            get {
              return ExternalUserEntitlements(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }

        internal struct Entitlement: GraphQLSelectionSet {
          internal static let possibleTypes = ["Entitlement"]

          internal static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("description", type: .scalar(String.self)),
            GraphQLField("value", type: .nonNull(.scalar(Int.self))),
          ]

          internal var snapshot: Snapshot

          internal init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          internal init(name: String, description: String? = nil, value: Int) {
            self.init(snapshot: ["__typename": "Entitlement", "name": name, "description": description, "value": value])
          }

          internal var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          internal var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          internal var description: String? {
            get {
              return snapshot["description"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "description")
            }
          }

          internal var value: Int {
            get {
              return snapshot["value"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "value")
            }
          }

          internal var fragments: Fragments {
            get {
              return Fragments(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }

          internal struct Fragments {
            internal var snapshot: Snapshot

            internal var entitlement: Entitlement {
              get {
                return Entitlement(snapshot: snapshot)
              }
              set {
                snapshot += newValue.snapshot
              }
            }
          }
        }
      }

      internal struct Consumption: GraphQLSelectionSet {
        internal static let possibleTypes = ["EntitlementConsumption"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("value", type: .nonNull(.scalar(Int.self))),
          GraphQLField("consumed", type: .nonNull(.scalar(Int.self))),
          GraphQLField("available", type: .nonNull(.scalar(Int.self))),
          GraphQLField("firstConsumedAtEpochMs", type: .scalar(Double.self)),
          GraphQLField("lastConsumedAtEpochMs", type: .scalar(Double.self)),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(name: String, value: Int, consumed: Int, available: Int, firstConsumedAtEpochMs: Double? = nil, lastConsumedAtEpochMs: Double? = nil) {
          self.init(snapshot: ["__typename": "EntitlementConsumption", "name": name, "value": value, "consumed": consumed, "available": available, "firstConsumedAtEpochMs": firstConsumedAtEpochMs, "lastConsumedAtEpochMs": lastConsumedAtEpochMs])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        internal var value: Int {
          get {
            return snapshot["value"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "value")
          }
        }

        internal var consumed: Int {
          get {
            return snapshot["consumed"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "consumed")
          }
        }

        internal var available: Int {
          get {
            return snapshot["available"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "available")
          }
        }

        internal var firstConsumedAtEpochMs: Double? {
          get {
            return snapshot["firstConsumedAtEpochMs"] as? Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "firstConsumedAtEpochMs")
          }
        }

        internal var lastConsumedAtEpochMs: Double? {
          get {
            return snapshot["lastConsumedAtEpochMs"] as? Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "lastConsumedAtEpochMs")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var entitlementConsumption: EntitlementConsumption {
            get {
              return EntitlementConsumption(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }
      }
    }
  }
}

internal final class GetEntitlementsSequenceQuery: GraphQLQuery {
  internal static let operationString =
    "query GetEntitlementsSequence($input: GetEntitlementsSequenceInput!) {\n  getEntitlementsSequence(input: $input) {\n    __typename\n    ...EntitlementsSequence\n  }\n}"

  internal static var requestString: String { return operationString.appending(EntitlementsSequence.fragmentString).appending(EntitlementsSequenceTransition.fragmentString) }

  internal var input: GetEntitlementsSequenceInput

  internal init(input: GetEntitlementsSequenceInput) {
    self.input = input
  }

  internal var variables: GraphQLMap? {
    return ["input": input]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Query"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("getEntitlementsSequence", arguments: ["input": GraphQLVariable("input")], type: .object(GetEntitlementsSequence.selections)),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(getEntitlementsSequence: GetEntitlementsSequence? = nil) {
      self.init(snapshot: ["__typename": "Query", "getEntitlementsSequence": getEntitlementsSequence.flatMap { $0.snapshot }])
    }

    internal var getEntitlementsSequence: GetEntitlementsSequence? {
      get {
        return (snapshot["getEntitlementsSequence"] as? Snapshot).flatMap { GetEntitlementsSequence(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getEntitlementsSequence")
      }
    }

    internal struct GetEntitlementsSequence: GraphQLSelectionSet {
      internal static let possibleTypes = ["EntitlementsSequence"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("transitions", type: .nonNull(.list(.nonNull(.object(Transition.selections))))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(name: String, description: String? = nil, createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Int, transitions: [Transition]) {
        self.init(snapshot: ["__typename": "EntitlementsSequence", "name": name, "description": description, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "transitions": transitions.map { $0.snapshot }])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      internal var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      internal var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      internal var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      internal var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      internal var transitions: [Transition] {
        get {
          return (snapshot["transitions"] as! [Snapshot]).map { Transition(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "transitions")
        }
      }

      internal var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      internal struct Fragments {
        internal var snapshot: Snapshot

        internal var entitlementsSequence: EntitlementsSequence {
          get {
            return EntitlementsSequence(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      internal struct Transition: GraphQLSelectionSet {
        internal static let possibleTypes = ["EntitlementsSequenceTransition"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("entitlementsSetName", type: .nonNull(.scalar(String.self))),
          GraphQLField("duration", type: .scalar(String.self)),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(entitlementsSetName: String, duration: String? = nil) {
          self.init(snapshot: ["__typename": "EntitlementsSequenceTransition", "entitlementsSetName": entitlementsSetName, "duration": duration])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var entitlementsSetName: String {
          get {
            return snapshot["entitlementsSetName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "entitlementsSetName")
          }
        }

        internal var duration: String? {
          get {
            return snapshot["duration"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "duration")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var entitlementsSequenceTransition: EntitlementsSequenceTransition {
            get {
              return EntitlementsSequenceTransition(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }
      }
    }
  }
}

internal final class GetEntitlementsSetQuery: GraphQLQuery {
  internal static let operationString =
    "query GetEntitlementsSet($input: GetEntitlementsSetInput!) {\n  getEntitlementsSet(input: $input) {\n    __typename\n    ...EntitlementsSet\n  }\n}"

  internal static var requestString: String { return operationString.appending(EntitlementsSet.fragmentString).appending(Entitlement.fragmentString) }

  internal var input: GetEntitlementsSetInput

  internal init(input: GetEntitlementsSetInput) {
    self.input = input
  }

  internal var variables: GraphQLMap? {
    return ["input": input]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Query"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("getEntitlementsSet", arguments: ["input": GraphQLVariable("input")], type: .object(GetEntitlementsSet.selections)),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(getEntitlementsSet: GetEntitlementsSet? = nil) {
      self.init(snapshot: ["__typename": "Query", "getEntitlementsSet": getEntitlementsSet.flatMap { $0.snapshot }])
    }

    internal var getEntitlementsSet: GetEntitlementsSet? {
      get {
        return (snapshot["getEntitlementsSet"] as? Snapshot).flatMap { GetEntitlementsSet(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getEntitlementsSet")
      }
    }

    internal struct GetEntitlementsSet: GraphQLSelectionSet {
      internal static let possibleTypes = ["EntitlementsSet"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("entitlements", type: .nonNull(.list(.nonNull(.object(Entitlement.selections))))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Int, name: String, description: String? = nil, entitlements: [Entitlement]) {
        self.init(snapshot: ["__typename": "EntitlementsSet", "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "name": name, "description": description, "entitlements": entitlements.map { $0.snapshot }])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      internal var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      internal var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      internal var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      internal var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      internal var entitlements: [Entitlement] {
        get {
          return (snapshot["entitlements"] as! [Snapshot]).map { Entitlement(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "entitlements")
        }
      }

      internal var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      internal struct Fragments {
        internal var snapshot: Snapshot

        internal var entitlementsSet: EntitlementsSet {
          get {
            return EntitlementsSet(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      internal struct Entitlement: GraphQLSelectionSet {
        internal static let possibleTypes = ["Entitlement"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("value", type: .nonNull(.scalar(Int.self))),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(name: String, description: String? = nil, value: Int) {
          self.init(snapshot: ["__typename": "Entitlement", "name": name, "description": description, "value": value])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        internal var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        internal var value: Int {
          get {
            return snapshot["value"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "value")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var entitlement: Entitlement {
            get {
              return Entitlement(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }
      }
    }
  }
}

internal final class ListEntitlementsSequencesQuery: GraphQLQuery {
  internal static let operationString =
    "query ListEntitlementsSequences($nextToken: String) {\n  listEntitlementsSequences(nextToken: $nextToken) {\n    __typename\n    ...EntitlementsSequencesConnection\n  }\n}"

  internal static var requestString: String { return operationString.appending(EntitlementsSequencesConnection.fragmentString).appending(EntitlementsSequence.fragmentString).appending(EntitlementsSequenceTransition.fragmentString) }

  internal var nextToken: String?

  internal init(nextToken: String? = nil) {
    self.nextToken = nextToken
  }

  internal var variables: GraphQLMap? {
    return ["nextToken": nextToken]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Query"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("listEntitlementsSequences", arguments: ["nextToken": GraphQLVariable("nextToken")], type: .nonNull(.object(ListEntitlementsSequence.selections))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(listEntitlementsSequences: ListEntitlementsSequence) {
      self.init(snapshot: ["__typename": "Query", "listEntitlementsSequences": listEntitlementsSequences.snapshot])
    }

    internal var listEntitlementsSequences: ListEntitlementsSequence {
      get {
        return ListEntitlementsSequence(snapshot: snapshot["listEntitlementsSequences"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "listEntitlementsSequences")
      }
    }

    internal struct ListEntitlementsSequence: GraphQLSelectionSet {
      internal static let possibleTypes = ["EntitlementsSequencesConnection"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.nonNull(.object(Item.selections))))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(items: [Item], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "EntitlementsSequencesConnection", "items": items.map { $0.snapshot }, "nextToken": nextToken])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var items: [Item] {
        get {
          return (snapshot["items"] as! [Snapshot]).map { Item(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "items")
        }
      }

      internal var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      internal var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      internal struct Fragments {
        internal var snapshot: Snapshot

        internal var entitlementsSequencesConnection: EntitlementsSequencesConnection {
          get {
            return EntitlementsSequencesConnection(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      internal struct Item: GraphQLSelectionSet {
        internal static let possibleTypes = ["EntitlementsSequence"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
          GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
          GraphQLField("version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("transitions", type: .nonNull(.list(.nonNull(.object(Transition.selections))))),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(name: String, description: String? = nil, createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Int, transitions: [Transition]) {
          self.init(snapshot: ["__typename": "EntitlementsSequence", "name": name, "description": description, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "transitions": transitions.map { $0.snapshot }])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        internal var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        internal var createdAtEpochMs: Double {
          get {
            return snapshot["createdAtEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
          }
        }

        internal var updatedAtEpochMs: Double {
          get {
            return snapshot["updatedAtEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
          }
        }

        internal var version: Int {
          get {
            return snapshot["version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "version")
          }
        }

        internal var transitions: [Transition] {
          get {
            return (snapshot["transitions"] as! [Snapshot]).map { Transition(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "transitions")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var entitlementsSequence: EntitlementsSequence {
            get {
              return EntitlementsSequence(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }

        internal struct Transition: GraphQLSelectionSet {
          internal static let possibleTypes = ["EntitlementsSequenceTransition"]

          internal static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("entitlementsSetName", type: .nonNull(.scalar(String.self))),
            GraphQLField("duration", type: .scalar(String.self)),
          ]

          internal var snapshot: Snapshot

          internal init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          internal init(entitlementsSetName: String, duration: String? = nil) {
            self.init(snapshot: ["__typename": "EntitlementsSequenceTransition", "entitlementsSetName": entitlementsSetName, "duration": duration])
          }

          internal var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          internal var entitlementsSetName: String {
            get {
              return snapshot["entitlementsSetName"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "entitlementsSetName")
            }
          }

          internal var duration: String? {
            get {
              return snapshot["duration"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "duration")
            }
          }

          internal var fragments: Fragments {
            get {
              return Fragments(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }

          internal struct Fragments {
            internal var snapshot: Snapshot

            internal var entitlementsSequenceTransition: EntitlementsSequenceTransition {
              get {
                return EntitlementsSequenceTransition(snapshot: snapshot)
              }
              set {
                snapshot += newValue.snapshot
              }
            }
          }
        }
      }
    }
  }
}

internal final class ListEntitlementsSetsQuery: GraphQLQuery {
  internal static let operationString =
    "query ListEntitlementsSets($nextToken: String) {\n  listEntitlementsSets(nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      ...EntitlementsSet\n    }\n    nextToken\n  }\n}"

  internal static var requestString: String { return operationString.appending(EntitlementsSet.fragmentString).appending(Entitlement.fragmentString) }

  internal var nextToken: String?

  internal init(nextToken: String? = nil) {
    self.nextToken = nextToken
  }

  internal var variables: GraphQLMap? {
    return ["nextToken": nextToken]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Query"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("listEntitlementsSets", arguments: ["nextToken": GraphQLVariable("nextToken")], type: .nonNull(.object(ListEntitlementsSet.selections))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(listEntitlementsSets: ListEntitlementsSet) {
      self.init(snapshot: ["__typename": "Query", "listEntitlementsSets": listEntitlementsSets.snapshot])
    }

    internal var listEntitlementsSets: ListEntitlementsSet {
      get {
        return ListEntitlementsSet(snapshot: snapshot["listEntitlementsSets"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "listEntitlementsSets")
      }
    }

    internal struct ListEntitlementsSet: GraphQLSelectionSet {
      internal static let possibleTypes = ["EntitlementsSetsConnection"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .nonNull(.list(.nonNull(.object(Item.selections))))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(items: [Item], nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "EntitlementsSetsConnection", "items": items.map { $0.snapshot }, "nextToken": nextToken])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var items: [Item] {
        get {
          return (snapshot["items"] as! [Snapshot]).map { Item(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "items")
        }
      }

      internal var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      internal struct Item: GraphQLSelectionSet {
        internal static let possibleTypes = ["EntitlementsSet"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
          GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
          GraphQLField("version", type: .nonNull(.scalar(Int.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("entitlements", type: .nonNull(.list(.nonNull(.object(Entitlement.selections))))),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Int, name: String, description: String? = nil, entitlements: [Entitlement]) {
          self.init(snapshot: ["__typename": "EntitlementsSet", "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "name": name, "description": description, "entitlements": entitlements.map { $0.snapshot }])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var createdAtEpochMs: Double {
          get {
            return snapshot["createdAtEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
          }
        }

        internal var updatedAtEpochMs: Double {
          get {
            return snapshot["updatedAtEpochMs"]! as! Double
          }
          set {
            snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
          }
        }

        internal var version: Int {
          get {
            return snapshot["version"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "version")
          }
        }

        internal var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        internal var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        internal var entitlements: [Entitlement] {
          get {
            return (snapshot["entitlements"] as! [Snapshot]).map { Entitlement(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "entitlements")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var entitlementsSet: EntitlementsSet {
            get {
              return EntitlementsSet(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }

        internal struct Entitlement: GraphQLSelectionSet {
          internal static let possibleTypes = ["Entitlement"]

          internal static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("description", type: .scalar(String.self)),
            GraphQLField("value", type: .nonNull(.scalar(Int.self))),
          ]

          internal var snapshot: Snapshot

          internal init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          internal init(name: String, description: String? = nil, value: Int) {
            self.init(snapshot: ["__typename": "Entitlement", "name": name, "description": description, "value": value])
          }

          internal var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          internal var name: String {
            get {
              return snapshot["name"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "name")
            }
          }

          internal var description: String? {
            get {
              return snapshot["description"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "description")
            }
          }

          internal var value: Int {
            get {
              return snapshot["value"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "value")
            }
          }

          internal var fragments: Fragments {
            get {
              return Fragments(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }

          internal struct Fragments {
            internal var snapshot: Snapshot

            internal var entitlement: Entitlement {
              get {
                return Entitlement(snapshot: snapshot)
              }
              set {
                snapshot += newValue.snapshot
              }
            }
          }
        }
      }
    }
  }
}

internal final class RemoveEntitledUserMutation: GraphQLMutation {
  internal static let operationString =
    "mutation RemoveEntitledUser($input: RemoveEntitledUserInput!) {\n  removeEntitledUser(input: $input) {\n    __typename\n    externalId\n  }\n}"

  internal var input: RemoveEntitledUserInput

  internal init(input: RemoveEntitledUserInput) {
    self.input = input
  }

  internal var variables: GraphQLMap? {
    return ["input": input]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Mutation"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("removeEntitledUser", arguments: ["input": GraphQLVariable("input")], type: .object(RemoveEntitledUser.selections)),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(removeEntitledUser: RemoveEntitledUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "removeEntitledUser": removeEntitledUser.flatMap { $0.snapshot }])
    }

    internal var removeEntitledUser: RemoveEntitledUser? {
      get {
        return (snapshot["removeEntitledUser"] as? Snapshot).flatMap { RemoveEntitledUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "removeEntitledUser")
      }
    }

    internal struct RemoveEntitledUser: GraphQLSelectionSet {
      internal static let possibleTypes = ["EntitledUser"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("externalId", type: .nonNull(.scalar(String.self))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(externalId: String) {
        self.init(snapshot: ["__typename": "EntitledUser", "externalId": externalId])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var externalId: String {
        get {
          return snapshot["externalId"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "externalId")
        }
      }
    }
  }
}

internal final class RemoveEntitlementsSequenceMutation: GraphQLMutation {
  internal static let operationString =
    "mutation RemoveEntitlementsSequence($input: RemoveEntitlementsSequenceInput!) {\n  removeEntitlementsSequence(input: $input) {\n    __typename\n    ...EntitlementsSequence\n  }\n}"

  internal static var requestString: String { return operationString.appending(EntitlementsSequence.fragmentString).appending(EntitlementsSequenceTransition.fragmentString) }

  internal var input: RemoveEntitlementsSequenceInput

  internal init(input: RemoveEntitlementsSequenceInput) {
    self.input = input
  }

  internal var variables: GraphQLMap? {
    return ["input": input]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Mutation"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("removeEntitlementsSequence", arguments: ["input": GraphQLVariable("input")], type: .object(RemoveEntitlementsSequence.selections)),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(removeEntitlementsSequence: RemoveEntitlementsSequence? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "removeEntitlementsSequence": removeEntitlementsSequence.flatMap { $0.snapshot }])
    }

    internal var removeEntitlementsSequence: RemoveEntitlementsSequence? {
      get {
        return (snapshot["removeEntitlementsSequence"] as? Snapshot).flatMap { RemoveEntitlementsSequence(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "removeEntitlementsSequence")
      }
    }

    internal struct RemoveEntitlementsSequence: GraphQLSelectionSet {
      internal static let possibleTypes = ["EntitlementsSequence"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("transitions", type: .nonNull(.list(.nonNull(.object(Transition.selections))))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(name: String, description: String? = nil, createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Int, transitions: [Transition]) {
        self.init(snapshot: ["__typename": "EntitlementsSequence", "name": name, "description": description, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "transitions": transitions.map { $0.snapshot }])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      internal var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      internal var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      internal var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      internal var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      internal var transitions: [Transition] {
        get {
          return (snapshot["transitions"] as! [Snapshot]).map { Transition(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "transitions")
        }
      }

      internal var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      internal struct Fragments {
        internal var snapshot: Snapshot

        internal var entitlementsSequence: EntitlementsSequence {
          get {
            return EntitlementsSequence(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      internal struct Transition: GraphQLSelectionSet {
        internal static let possibleTypes = ["EntitlementsSequenceTransition"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("entitlementsSetName", type: .nonNull(.scalar(String.self))),
          GraphQLField("duration", type: .scalar(String.self)),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(entitlementsSetName: String, duration: String? = nil) {
          self.init(snapshot: ["__typename": "EntitlementsSequenceTransition", "entitlementsSetName": entitlementsSetName, "duration": duration])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var entitlementsSetName: String {
          get {
            return snapshot["entitlementsSetName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "entitlementsSetName")
          }
        }

        internal var duration: String? {
          get {
            return snapshot["duration"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "duration")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var entitlementsSequenceTransition: EntitlementsSequenceTransition {
            get {
              return EntitlementsSequenceTransition(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }
      }
    }
  }
}

internal final class RemoveEntitlementsSetMutation: GraphQLMutation {
  internal static let operationString =
    "mutation RemoveEntitlementsSet($input: RemoveEntitlementsSetInput!) {\n  removeEntitlementsSet(input: $input) {\n    __typename\n    ...EntitlementsSet\n  }\n}"

  internal static var requestString: String { return operationString.appending(EntitlementsSet.fragmentString).appending(Entitlement.fragmentString) }

  internal var input: RemoveEntitlementsSetInput

  internal init(input: RemoveEntitlementsSetInput) {
    self.input = input
  }

  internal var variables: GraphQLMap? {
    return ["input": input]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Mutation"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("removeEntitlementsSet", arguments: ["input": GraphQLVariable("input")], type: .object(RemoveEntitlementsSet.selections)),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(removeEntitlementsSet: RemoveEntitlementsSet? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "removeEntitlementsSet": removeEntitlementsSet.flatMap { $0.snapshot }])
    }

    internal var removeEntitlementsSet: RemoveEntitlementsSet? {
      get {
        return (snapshot["removeEntitlementsSet"] as? Snapshot).flatMap { RemoveEntitlementsSet(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "removeEntitlementsSet")
      }
    }

    internal struct RemoveEntitlementsSet: GraphQLSelectionSet {
      internal static let possibleTypes = ["EntitlementsSet"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("entitlements", type: .nonNull(.list(.nonNull(.object(Entitlement.selections))))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Int, name: String, description: String? = nil, entitlements: [Entitlement]) {
        self.init(snapshot: ["__typename": "EntitlementsSet", "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "name": name, "description": description, "entitlements": entitlements.map { $0.snapshot }])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      internal var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      internal var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      internal var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      internal var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      internal var entitlements: [Entitlement] {
        get {
          return (snapshot["entitlements"] as! [Snapshot]).map { Entitlement(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "entitlements")
        }
      }

      internal var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      internal struct Fragments {
        internal var snapshot: Snapshot

        internal var entitlementsSet: EntitlementsSet {
          get {
            return EntitlementsSet(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      internal struct Entitlement: GraphQLSelectionSet {
        internal static let possibleTypes = ["Entitlement"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("value", type: .nonNull(.scalar(Int.self))),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(name: String, description: String? = nil, value: Int) {
          self.init(snapshot: ["__typename": "Entitlement", "name": name, "description": description, "value": value])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        internal var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        internal var value: Int {
          get {
            return snapshot["value"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "value")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var entitlement: Entitlement {
            get {
              return Entitlement(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }
      }
    }
  }
}

internal final class SetEntitlementsSequenceMutation: GraphQLMutation {
  internal static let operationString =
    "mutation SetEntitlementsSequence($input: SetEntitlementsSequenceInput!) {\n  setEntitlementsSequence(input: $input) {\n    __typename\n    ...EntitlementsSequence\n  }\n}"

  internal static var requestString: String { return operationString.appending(EntitlementsSequence.fragmentString).appending(EntitlementsSequenceTransition.fragmentString) }

  internal var input: SetEntitlementsSequenceInput

  internal init(input: SetEntitlementsSequenceInput) {
    self.input = input
  }

  internal var variables: GraphQLMap? {
    return ["input": input]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Mutation"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("setEntitlementsSequence", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(SetEntitlementsSequence.selections))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(setEntitlementsSequence: SetEntitlementsSequence) {
      self.init(snapshot: ["__typename": "Mutation", "setEntitlementsSequence": setEntitlementsSequence.snapshot])
    }

    internal var setEntitlementsSequence: SetEntitlementsSequence {
      get {
        return SetEntitlementsSequence(snapshot: snapshot["setEntitlementsSequence"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "setEntitlementsSequence")
      }
    }

    internal struct SetEntitlementsSequence: GraphQLSelectionSet {
      internal static let possibleTypes = ["EntitlementsSequence"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("transitions", type: .nonNull(.list(.nonNull(.object(Transition.selections))))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(name: String, description: String? = nil, createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Int, transitions: [Transition]) {
        self.init(snapshot: ["__typename": "EntitlementsSequence", "name": name, "description": description, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "transitions": transitions.map { $0.snapshot }])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      internal var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      internal var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      internal var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      internal var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      internal var transitions: [Transition] {
        get {
          return (snapshot["transitions"] as! [Snapshot]).map { Transition(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "transitions")
        }
      }

      internal var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      internal struct Fragments {
        internal var snapshot: Snapshot

        internal var entitlementsSequence: EntitlementsSequence {
          get {
            return EntitlementsSequence(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      internal struct Transition: GraphQLSelectionSet {
        internal static let possibleTypes = ["EntitlementsSequenceTransition"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("entitlementsSetName", type: .nonNull(.scalar(String.self))),
          GraphQLField("duration", type: .scalar(String.self)),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(entitlementsSetName: String, duration: String? = nil) {
          self.init(snapshot: ["__typename": "EntitlementsSequenceTransition", "entitlementsSetName": entitlementsSetName, "duration": duration])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var entitlementsSetName: String {
          get {
            return snapshot["entitlementsSetName"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "entitlementsSetName")
          }
        }

        internal var duration: String? {
          get {
            return snapshot["duration"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "duration")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var entitlementsSequenceTransition: EntitlementsSequenceTransition {
            get {
              return EntitlementsSequenceTransition(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }
      }
    }
  }
}

internal final class SetEntitlementsSetMutation: GraphQLMutation {
  internal static let operationString =
    "mutation SetEntitlementsSet($input: SetEntitlementsSetInput!) {\n  setEntitlementsSet(input: $input) {\n    __typename\n    ...EntitlementsSet\n  }\n}"

  internal static var requestString: String { return operationString.appending(EntitlementsSet.fragmentString).appending(Entitlement.fragmentString) }

  internal var input: SetEntitlementsSetInput

  internal init(input: SetEntitlementsSetInput) {
    self.input = input
  }

  internal var variables: GraphQLMap? {
    return ["input": input]
  }

  internal struct Data: GraphQLSelectionSet {
    internal static let possibleTypes = ["Mutation"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("setEntitlementsSet", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(SetEntitlementsSet.selections))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(setEntitlementsSet: SetEntitlementsSet) {
      self.init(snapshot: ["__typename": "Mutation", "setEntitlementsSet": setEntitlementsSet.snapshot])
    }

    internal var setEntitlementsSet: SetEntitlementsSet {
      get {
        return SetEntitlementsSet(snapshot: snapshot["setEntitlementsSet"]! as! Snapshot)
      }
      set {
        snapshot.updateValue(newValue.snapshot, forKey: "setEntitlementsSet")
      }
    }

    internal struct SetEntitlementsSet: GraphQLSelectionSet {
      internal static let possibleTypes = ["EntitlementsSet"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
        GraphQLField("version", type: .nonNull(.scalar(Int.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("entitlements", type: .nonNull(.list(.nonNull(.object(Entitlement.selections))))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Int, name: String, description: String? = nil, entitlements: [Entitlement]) {
        self.init(snapshot: ["__typename": "EntitlementsSet", "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "name": name, "description": description, "entitlements": entitlements.map { $0.snapshot }])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var createdAtEpochMs: Double {
        get {
          return snapshot["createdAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
        }
      }

      internal var updatedAtEpochMs: Double {
        get {
          return snapshot["updatedAtEpochMs"]! as! Double
        }
        set {
          snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
        }
      }

      internal var version: Int {
        get {
          return snapshot["version"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "version")
        }
      }

      internal var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      internal var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      internal var entitlements: [Entitlement] {
        get {
          return (snapshot["entitlements"] as! [Snapshot]).map { Entitlement(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "entitlements")
        }
      }

      internal var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      internal struct Fragments {
        internal var snapshot: Snapshot

        internal var entitlementsSet: EntitlementsSet {
          get {
            return EntitlementsSet(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }

      internal struct Entitlement: GraphQLSelectionSet {
        internal static let possibleTypes = ["Entitlement"]

        internal static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("value", type: .nonNull(.scalar(Int.self))),
        ]

        internal var snapshot: Snapshot

        internal init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        internal init(name: String, description: String? = nil, value: Int) {
          self.init(snapshot: ["__typename": "Entitlement", "name": name, "description": description, "value": value])
        }

        internal var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        internal var name: String {
          get {
            return snapshot["name"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "name")
          }
        }

        internal var description: String? {
          get {
            return snapshot["description"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        internal var value: Int {
          get {
            return snapshot["value"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "value")
          }
        }

        internal var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        internal struct Fragments {
          internal var snapshot: Snapshot

          internal var entitlement: Entitlement {
            get {
              return Entitlement(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }
        }
      }
    }
  }
}

internal struct Entitlement: GraphQLFragment {
  internal static let fragmentString =
    "fragment Entitlement on Entitlement {\n  __typename\n  name\n  description\n  value\n}"

  internal static let possibleTypes = ["Entitlement"]

  internal static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("name", type: .nonNull(.scalar(String.self))),
    GraphQLField("description", type: .scalar(String.self)),
    GraphQLField("value", type: .nonNull(.scalar(Int.self))),
  ]

  internal var snapshot: Snapshot

  internal init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  internal init(name: String, description: String? = nil, value: Int) {
    self.init(snapshot: ["__typename": "Entitlement", "name": name, "description": description, "value": value])
  }

  internal var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  internal var name: String {
    get {
      return snapshot["name"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "name")
    }
  }

  internal var description: String? {
    get {
      return snapshot["description"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "description")
    }
  }

  internal var value: Int {
    get {
      return snapshot["value"]! as! Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "value")
    }
  }
}

internal struct EntitlementConsumption: GraphQLFragment {
  internal static let fragmentString =
    "fragment EntitlementConsumption on EntitlementConsumption {\n  __typename\n  name\n  value\n  consumed\n  available\n  firstConsumedAtEpochMs\n  lastConsumedAtEpochMs\n}"

  internal static let possibleTypes = ["EntitlementConsumption"]

  internal static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("name", type: .nonNull(.scalar(String.self))),
    GraphQLField("value", type: .nonNull(.scalar(Int.self))),
    GraphQLField("consumed", type: .nonNull(.scalar(Int.self))),
    GraphQLField("available", type: .nonNull(.scalar(Int.self))),
    GraphQLField("firstConsumedAtEpochMs", type: .scalar(Double.self)),
    GraphQLField("lastConsumedAtEpochMs", type: .scalar(Double.self)),
  ]

  internal var snapshot: Snapshot

  internal init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  internal init(name: String, value: Int, consumed: Int, available: Int, firstConsumedAtEpochMs: Double? = nil, lastConsumedAtEpochMs: Double? = nil) {
    self.init(snapshot: ["__typename": "EntitlementConsumption", "name": name, "value": value, "consumed": consumed, "available": available, "firstConsumedAtEpochMs": firstConsumedAtEpochMs, "lastConsumedAtEpochMs": lastConsumedAtEpochMs])
  }

  internal var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  internal var name: String {
    get {
      return snapshot["name"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "name")
    }
  }

  internal var value: Int {
    get {
      return snapshot["value"]! as! Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "value")
    }
  }

  internal var consumed: Int {
    get {
      return snapshot["consumed"]! as! Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "consumed")
    }
  }

  internal var available: Int {
    get {
      return snapshot["available"]! as! Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "available")
    }
  }

  internal var firstConsumedAtEpochMs: Double? {
    get {
      return snapshot["firstConsumedAtEpochMs"] as? Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "firstConsumedAtEpochMs")
    }
  }

  internal var lastConsumedAtEpochMs: Double? {
    get {
      return snapshot["lastConsumedAtEpochMs"] as? Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "lastConsumedAtEpochMs")
    }
  }
}

internal struct EntitlementsSequence: GraphQLFragment {
  internal static let fragmentString =
    "fragment EntitlementsSequence on EntitlementsSequence {\n  __typename\n  name\n  description\n  createdAtEpochMs\n  updatedAtEpochMs\n  version\n  transitions {\n    __typename\n    ...EntitlementsSequenceTransition\n  }\n}"

  internal static let possibleTypes = ["EntitlementsSequence"]

  internal static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("name", type: .nonNull(.scalar(String.self))),
    GraphQLField("description", type: .scalar(String.self)),
    GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
    GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
    GraphQLField("version", type: .nonNull(.scalar(Int.self))),
    GraphQLField("transitions", type: .nonNull(.list(.nonNull(.object(Transition.selections))))),
  ]

  internal var snapshot: Snapshot

  internal init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  internal init(name: String, description: String? = nil, createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Int, transitions: [Transition]) {
    self.init(snapshot: ["__typename": "EntitlementsSequence", "name": name, "description": description, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "transitions": transitions.map { $0.snapshot }])
  }

  internal var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  internal var name: String {
    get {
      return snapshot["name"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "name")
    }
  }

  internal var description: String? {
    get {
      return snapshot["description"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "description")
    }
  }

  internal var createdAtEpochMs: Double {
    get {
      return snapshot["createdAtEpochMs"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
    }
  }

  internal var updatedAtEpochMs: Double {
    get {
      return snapshot["updatedAtEpochMs"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
    }
  }

  internal var version: Int {
    get {
      return snapshot["version"]! as! Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "version")
    }
  }

  internal var transitions: [Transition] {
    get {
      return (snapshot["transitions"] as! [Snapshot]).map { Transition(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "transitions")
    }
  }

  internal struct Transition: GraphQLSelectionSet {
    internal static let possibleTypes = ["EntitlementsSequenceTransition"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("entitlementsSetName", type: .nonNull(.scalar(String.self))),
      GraphQLField("duration", type: .scalar(String.self)),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(entitlementsSetName: String, duration: String? = nil) {
      self.init(snapshot: ["__typename": "EntitlementsSequenceTransition", "entitlementsSetName": entitlementsSetName, "duration": duration])
    }

    internal var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    internal var entitlementsSetName: String {
      get {
        return snapshot["entitlementsSetName"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "entitlementsSetName")
      }
    }

    internal var duration: String? {
      get {
        return snapshot["duration"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "duration")
      }
    }

    internal var fragments: Fragments {
      get {
        return Fragments(snapshot: snapshot)
      }
      set {
        snapshot += newValue.snapshot
      }
    }

    internal struct Fragments {
      internal var snapshot: Snapshot

      internal var entitlementsSequenceTransition: EntitlementsSequenceTransition {
        get {
          return EntitlementsSequenceTransition(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }
    }
  }
}

internal struct EntitlementsSequencesConnection: GraphQLFragment {
  internal static let fragmentString =
    "fragment EntitlementsSequencesConnection on EntitlementsSequencesConnection {\n  __typename\n  items {\n    __typename\n    ...EntitlementsSequence\n  }\n  nextToken\n}"

  internal static let possibleTypes = ["EntitlementsSequencesConnection"]

  internal static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("items", type: .nonNull(.list(.nonNull(.object(Item.selections))))),
    GraphQLField("nextToken", type: .scalar(String.self)),
  ]

  internal var snapshot: Snapshot

  internal init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  internal init(items: [Item], nextToken: String? = nil) {
    self.init(snapshot: ["__typename": "EntitlementsSequencesConnection", "items": items.map { $0.snapshot }, "nextToken": nextToken])
  }

  internal var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  internal var items: [Item] {
    get {
      return (snapshot["items"] as! [Snapshot]).map { Item(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "items")
    }
  }

  internal var nextToken: String? {
    get {
      return snapshot["nextToken"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "nextToken")
    }
  }

  internal struct Item: GraphQLSelectionSet {
    internal static let possibleTypes = ["EntitlementsSequence"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("name", type: .nonNull(.scalar(String.self))),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
      GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
      GraphQLField("version", type: .nonNull(.scalar(Int.self))),
      GraphQLField("transitions", type: .nonNull(.list(.nonNull(.object(Transition.selections))))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(name: String, description: String? = nil, createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Int, transitions: [Transition]) {
      self.init(snapshot: ["__typename": "EntitlementsSequence", "name": name, "description": description, "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "transitions": transitions.map { $0.snapshot }])
    }

    internal var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    internal var name: String {
      get {
        return snapshot["name"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "name")
      }
    }

    internal var description: String? {
      get {
        return snapshot["description"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "description")
      }
    }

    internal var createdAtEpochMs: Double {
      get {
        return snapshot["createdAtEpochMs"]! as! Double
      }
      set {
        snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
      }
    }

    internal var updatedAtEpochMs: Double {
      get {
        return snapshot["updatedAtEpochMs"]! as! Double
      }
      set {
        snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
      }
    }

    internal var version: Int {
      get {
        return snapshot["version"]! as! Int
      }
      set {
        snapshot.updateValue(newValue, forKey: "version")
      }
    }

    internal var transitions: [Transition] {
      get {
        return (snapshot["transitions"] as! [Snapshot]).map { Transition(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "transitions")
      }
    }

    internal var fragments: Fragments {
      get {
        return Fragments(snapshot: snapshot)
      }
      set {
        snapshot += newValue.snapshot
      }
    }

    internal struct Fragments {
      internal var snapshot: Snapshot

      internal var entitlementsSequence: EntitlementsSequence {
        get {
          return EntitlementsSequence(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }
    }

    internal struct Transition: GraphQLSelectionSet {
      internal static let possibleTypes = ["EntitlementsSequenceTransition"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("entitlementsSetName", type: .nonNull(.scalar(String.self))),
        GraphQLField("duration", type: .scalar(String.self)),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(entitlementsSetName: String, duration: String? = nil) {
        self.init(snapshot: ["__typename": "EntitlementsSequenceTransition", "entitlementsSetName": entitlementsSetName, "duration": duration])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var entitlementsSetName: String {
        get {
          return snapshot["entitlementsSetName"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "entitlementsSetName")
        }
      }

      internal var duration: String? {
        get {
          return snapshot["duration"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "duration")
        }
      }

      internal var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      internal struct Fragments {
        internal var snapshot: Snapshot

        internal var entitlementsSequenceTransition: EntitlementsSequenceTransition {
          get {
            return EntitlementsSequenceTransition(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }
    }
  }
}

internal struct EntitlementsSequenceTransition: GraphQLFragment {
  internal static let fragmentString =
    "fragment EntitlementsSequenceTransition on EntitlementsSequenceTransition {\n  __typename\n  entitlementsSetName\n  duration\n}"

  internal static let possibleTypes = ["EntitlementsSequenceTransition"]

  internal static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("entitlementsSetName", type: .nonNull(.scalar(String.self))),
    GraphQLField("duration", type: .scalar(String.self)),
  ]

  internal var snapshot: Snapshot

  internal init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  internal init(entitlementsSetName: String, duration: String? = nil) {
    self.init(snapshot: ["__typename": "EntitlementsSequenceTransition", "entitlementsSetName": entitlementsSetName, "duration": duration])
  }

  internal var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  internal var entitlementsSetName: String {
    get {
      return snapshot["entitlementsSetName"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "entitlementsSetName")
    }
  }

  internal var duration: String? {
    get {
      return snapshot["duration"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "duration")
    }
  }
}

internal struct EntitlementsSet: GraphQLFragment {
  internal static let fragmentString =
    "fragment EntitlementsSet on EntitlementsSet {\n  __typename\n  createdAtEpochMs\n  updatedAtEpochMs\n  version\n  name\n  description\n  entitlements {\n    __typename\n    ...Entitlement\n  }\n}"

  internal static let possibleTypes = ["EntitlementsSet"]

  internal static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("createdAtEpochMs", type: .nonNull(.scalar(Double.self))),
    GraphQLField("updatedAtEpochMs", type: .nonNull(.scalar(Double.self))),
    GraphQLField("version", type: .nonNull(.scalar(Int.self))),
    GraphQLField("name", type: .nonNull(.scalar(String.self))),
    GraphQLField("description", type: .scalar(String.self)),
    GraphQLField("entitlements", type: .nonNull(.list(.nonNull(.object(Entitlement.selections))))),
  ]

  internal var snapshot: Snapshot

  internal init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  internal init(createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Int, name: String, description: String? = nil, entitlements: [Entitlement]) {
    self.init(snapshot: ["__typename": "EntitlementsSet", "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "name": name, "description": description, "entitlements": entitlements.map { $0.snapshot }])
  }

  internal var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  internal var createdAtEpochMs: Double {
    get {
      return snapshot["createdAtEpochMs"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
    }
  }

  internal var updatedAtEpochMs: Double {
    get {
      return snapshot["updatedAtEpochMs"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
    }
  }

  internal var version: Int {
    get {
      return snapshot["version"]! as! Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "version")
    }
  }

  internal var name: String {
    get {
      return snapshot["name"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "name")
    }
  }

  internal var description: String? {
    get {
      return snapshot["description"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "description")
    }
  }

  internal var entitlements: [Entitlement] {
    get {
      return (snapshot["entitlements"] as! [Snapshot]).map { Entitlement(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "entitlements")
    }
  }

  internal struct Entitlement: GraphQLSelectionSet {
    internal static let possibleTypes = ["Entitlement"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("name", type: .nonNull(.scalar(String.self))),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("value", type: .nonNull(.scalar(Int.self))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(name: String, description: String? = nil, value: Int) {
      self.init(snapshot: ["__typename": "Entitlement", "name": name, "description": description, "value": value])
    }

    internal var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    internal var name: String {
      get {
        return snapshot["name"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "name")
      }
    }

    internal var description: String? {
      get {
        return snapshot["description"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "description")
      }
    }

    internal var value: Int {
      get {
        return snapshot["value"]! as! Int
      }
      set {
        snapshot.updateValue(newValue, forKey: "value")
      }
    }

    internal var fragments: Fragments {
      get {
        return Fragments(snapshot: snapshot)
      }
      set {
        snapshot += newValue.snapshot
      }
    }

    internal struct Fragments {
      internal var snapshot: Snapshot

      internal var entitlement: Entitlement {
        get {
          return Entitlement(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }
    }
  }
}

internal struct ExternalEntitlementsConsumption: GraphQLFragment {
  internal static let fragmentString =
    "fragment ExternalEntitlementsConsumption on ExternalEntitlementsConsumption {\n  __typename\n  entitlements {\n    __typename\n    ...ExternalUserEntitlements\n  }\n  consumption {\n    __typename\n    ...EntitlementConsumption\n  }\n}"

  internal static let possibleTypes = ["ExternalEntitlementsConsumption"]

  internal static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("entitlements", type: .nonNull(.object(Entitlement.selections))),
    GraphQLField("consumption", type: .nonNull(.list(.nonNull(.object(Consumption.selections))))),
  ]

  internal var snapshot: Snapshot

  internal init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  internal init(entitlements: Entitlement, consumption: [Consumption]) {
    self.init(snapshot: ["__typename": "ExternalEntitlementsConsumption", "entitlements": entitlements.snapshot, "consumption": consumption.map { $0.snapshot }])
  }

  internal var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  internal var entitlements: Entitlement {
    get {
      return Entitlement(snapshot: snapshot["entitlements"]! as! Snapshot)
    }
    set {
      snapshot.updateValue(newValue.snapshot, forKey: "entitlements")
    }
  }

  internal var consumption: [Consumption] {
    get {
      return (snapshot["consumption"] as! [Snapshot]).map { Consumption(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "consumption")
    }
  }

  internal struct Entitlement: GraphQLSelectionSet {
    internal static let possibleTypes = ["ExternalUserEntitlements"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
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

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Double, externalId: String, owner: String? = nil, accountState: AccountStates? = nil, entitlementsSetName: String? = nil, entitlementsSequenceName: String? = nil, entitlements: [Entitlement], transitionsRelativeToEpochMs: Double? = nil) {
      self.init(snapshot: ["__typename": "ExternalUserEntitlements", "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "externalId": externalId, "owner": owner, "accountState": accountState, "entitlementsSetName": entitlementsSetName, "entitlementsSequenceName": entitlementsSequenceName, "entitlements": entitlements.map { $0.snapshot }, "transitionsRelativeToEpochMs": transitionsRelativeToEpochMs])
    }

    internal var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    internal var createdAtEpochMs: Double {
      get {
        return snapshot["createdAtEpochMs"]! as! Double
      }
      set {
        snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
      }
    }

    internal var updatedAtEpochMs: Double {
      get {
        return snapshot["updatedAtEpochMs"]! as! Double
      }
      set {
        snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
      }
    }

    internal var version: Double {
      get {
        return snapshot["version"]! as! Double
      }
      set {
        snapshot.updateValue(newValue, forKey: "version")
      }
    }

    internal var externalId: String {
      get {
        return snapshot["externalId"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "externalId")
      }
    }

    internal var owner: String? {
      get {
        return snapshot["owner"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "owner")
      }
    }

    internal var accountState: AccountStates? {
      get {
        return snapshot["accountState"] as? AccountStates
      }
      set {
        snapshot.updateValue(newValue, forKey: "accountState")
      }
    }

    internal var entitlementsSetName: String? {
      get {
        return snapshot["entitlementsSetName"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "entitlementsSetName")
      }
    }

    internal var entitlementsSequenceName: String? {
      get {
        return snapshot["entitlementsSequenceName"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "entitlementsSequenceName")
      }
    }

    internal var entitlements: [Entitlement] {
      get {
        return (snapshot["entitlements"] as! [Snapshot]).map { Entitlement(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "entitlements")
      }
    }

    internal var transitionsRelativeToEpochMs: Double? {
      get {
        return snapshot["transitionsRelativeToEpochMs"] as? Double
      }
      set {
        snapshot.updateValue(newValue, forKey: "transitionsRelativeToEpochMs")
      }
    }

    internal var fragments: Fragments {
      get {
        return Fragments(snapshot: snapshot)
      }
      set {
        snapshot += newValue.snapshot
      }
    }

    internal struct Fragments {
      internal var snapshot: Snapshot

      internal var externalUserEntitlements: ExternalUserEntitlements {
        get {
          return ExternalUserEntitlements(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }
    }

    internal struct Entitlement: GraphQLSelectionSet {
      internal static let possibleTypes = ["Entitlement"]

      internal static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .scalar(String.self)),
        GraphQLField("value", type: .nonNull(.scalar(Int.self))),
      ]

      internal var snapshot: Snapshot

      internal init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      internal init(name: String, description: String? = nil, value: Int) {
        self.init(snapshot: ["__typename": "Entitlement", "name": name, "description": description, "value": value])
      }

      internal var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      internal var name: String {
        get {
          return snapshot["name"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      internal var description: String? {
        get {
          return snapshot["description"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      internal var value: Int {
        get {
          return snapshot["value"]! as! Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "value")
        }
      }

      internal var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      internal struct Fragments {
        internal var snapshot: Snapshot

        internal var entitlement: Entitlement {
          get {
            return Entitlement(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }
    }
  }

  internal struct Consumption: GraphQLSelectionSet {
    internal static let possibleTypes = ["EntitlementConsumption"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("name", type: .nonNull(.scalar(String.self))),
      GraphQLField("value", type: .nonNull(.scalar(Int.self))),
      GraphQLField("consumed", type: .nonNull(.scalar(Int.self))),
      GraphQLField("available", type: .nonNull(.scalar(Int.self))),
      GraphQLField("firstConsumedAtEpochMs", type: .scalar(Double.self)),
      GraphQLField("lastConsumedAtEpochMs", type: .scalar(Double.self)),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(name: String, value: Int, consumed: Int, available: Int, firstConsumedAtEpochMs: Double? = nil, lastConsumedAtEpochMs: Double? = nil) {
      self.init(snapshot: ["__typename": "EntitlementConsumption", "name": name, "value": value, "consumed": consumed, "available": available, "firstConsumedAtEpochMs": firstConsumedAtEpochMs, "lastConsumedAtEpochMs": lastConsumedAtEpochMs])
    }

    internal var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    internal var name: String {
      get {
        return snapshot["name"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "name")
      }
    }

    internal var value: Int {
      get {
        return snapshot["value"]! as! Int
      }
      set {
        snapshot.updateValue(newValue, forKey: "value")
      }
    }

    internal var consumed: Int {
      get {
        return snapshot["consumed"]! as! Int
      }
      set {
        snapshot.updateValue(newValue, forKey: "consumed")
      }
    }

    internal var available: Int {
      get {
        return snapshot["available"]! as! Int
      }
      set {
        snapshot.updateValue(newValue, forKey: "available")
      }
    }

    internal var firstConsumedAtEpochMs: Double? {
      get {
        return snapshot["firstConsumedAtEpochMs"] as? Double
      }
      set {
        snapshot.updateValue(newValue, forKey: "firstConsumedAtEpochMs")
      }
    }

    internal var lastConsumedAtEpochMs: Double? {
      get {
        return snapshot["lastConsumedAtEpochMs"] as? Double
      }
      set {
        snapshot.updateValue(newValue, forKey: "lastConsumedAtEpochMs")
      }
    }

    internal var fragments: Fragments {
      get {
        return Fragments(snapshot: snapshot)
      }
      set {
        snapshot += newValue.snapshot
      }
    }

    internal struct Fragments {
      internal var snapshot: Snapshot

      internal var entitlementConsumption: EntitlementConsumption {
        get {
          return EntitlementConsumption(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }
    }
  }
}

internal struct ExternalUserEntitlements: GraphQLFragment {
  internal static let fragmentString =
    "fragment ExternalUserEntitlements on ExternalUserEntitlements {\n  __typename\n  createdAtEpochMs\n  updatedAtEpochMs\n  version\n  externalId\n  owner\n  accountState\n  entitlementsSetName\n  entitlementsSequenceName\n  entitlements {\n    __typename\n    ...Entitlement\n  }\n  transitionsRelativeToEpochMs\n}"

  internal static let possibleTypes = ["ExternalUserEntitlements"]

  internal static let selections: [GraphQLSelection] = [
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

  internal var snapshot: Snapshot

  internal init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  internal init(createdAtEpochMs: Double, updatedAtEpochMs: Double, version: Double, externalId: String, owner: String? = nil, accountState: AccountStates? = nil, entitlementsSetName: String? = nil, entitlementsSequenceName: String? = nil, entitlements: [Entitlement], transitionsRelativeToEpochMs: Double? = nil) {
    self.init(snapshot: ["__typename": "ExternalUserEntitlements", "createdAtEpochMs": createdAtEpochMs, "updatedAtEpochMs": updatedAtEpochMs, "version": version, "externalId": externalId, "owner": owner, "accountState": accountState, "entitlementsSetName": entitlementsSetName, "entitlementsSequenceName": entitlementsSequenceName, "entitlements": entitlements.map { $0.snapshot }, "transitionsRelativeToEpochMs": transitionsRelativeToEpochMs])
  }

  internal var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  internal var createdAtEpochMs: Double {
    get {
      return snapshot["createdAtEpochMs"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "createdAtEpochMs")
    }
  }

  internal var updatedAtEpochMs: Double {
    get {
      return snapshot["updatedAtEpochMs"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "updatedAtEpochMs")
    }
  }

  internal var version: Double {
    get {
      return snapshot["version"]! as! Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "version")
    }
  }

  internal var externalId: String {
    get {
      return snapshot["externalId"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "externalId")
    }
  }

  internal var owner: String? {
    get {
      return snapshot["owner"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "owner")
    }
  }

  internal var accountState: AccountStates? {
    get {
      return snapshot["accountState"] as? AccountStates
    }
    set {
      snapshot.updateValue(newValue, forKey: "accountState")
    }
  }

  internal var entitlementsSetName: String? {
    get {
      return snapshot["entitlementsSetName"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "entitlementsSetName")
    }
  }

  internal var entitlementsSequenceName: String? {
    get {
      return snapshot["entitlementsSequenceName"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "entitlementsSequenceName")
    }
  }

  internal var entitlements: [Entitlement] {
    get {
      return (snapshot["entitlements"] as! [Snapshot]).map { Entitlement(snapshot: $0) }
    }
    set {
      snapshot.updateValue(newValue.map { $0.snapshot }, forKey: "entitlements")
    }
  }

  internal var transitionsRelativeToEpochMs: Double? {
    get {
      return snapshot["transitionsRelativeToEpochMs"] as? Double
    }
    set {
      snapshot.updateValue(newValue, forKey: "transitionsRelativeToEpochMs")
    }
  }

  internal struct Entitlement: GraphQLSelectionSet {
    internal static let possibleTypes = ["Entitlement"]

    internal static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("name", type: .nonNull(.scalar(String.self))),
      GraphQLField("description", type: .scalar(String.self)),
      GraphQLField("value", type: .nonNull(.scalar(Int.self))),
    ]

    internal var snapshot: Snapshot

    internal init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    internal init(name: String, description: String? = nil, value: Int) {
      self.init(snapshot: ["__typename": "Entitlement", "name": name, "description": description, "value": value])
    }

    internal var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    internal var name: String {
      get {
        return snapshot["name"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "name")
      }
    }

    internal var description: String? {
      get {
        return snapshot["description"] as? String
      }
      set {
        snapshot.updateValue(newValue, forKey: "description")
      }
    }

    internal var value: Int {
      get {
        return snapshot["value"]! as! Int
      }
      set {
        snapshot.updateValue(newValue, forKey: "value")
      }
    }

    internal var fragments: Fragments {
      get {
        return Fragments(snapshot: snapshot)
      }
      set {
        snapshot += newValue.snapshot
      }
    }

    internal struct Fragments {
      internal var snapshot: Snapshot

      internal var entitlement: Entitlement {
        get {
          return Entitlement(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }
    }
  }
}

internal struct ExternalUserEntitlementsError: GraphQLFragment {
  internal static let fragmentString =
    "fragment ExternalUserEntitlementsError on ExternalUserEntitlementsError {\n  __typename\n  error\n}"

  internal static let possibleTypes = ["ExternalUserEntitlementsError"]

  internal static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("error", type: .nonNull(.scalar(String.self))),
  ]

  internal var snapshot: Snapshot

  internal init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  internal init(error: String) {
    self.init(snapshot: ["__typename": "ExternalUserEntitlementsError", "error": error])
  }

  internal var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  internal var error: String {
    get {
      return snapshot["error"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "error")
    }
  }
}
}