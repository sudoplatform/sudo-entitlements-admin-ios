//
// Copyright © 2020 Anonyome Labs, Inc. All rights reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

// swiftlint:disable line_length

import Foundation

// MARK: - Entitlements Sequences

extension GraphQL.AddEntitlementsSequenceMutation.Data.AddEntitlementsSequence.Transition: ApiEntitlementsSequenceTransition {}
extension GraphQL.AddEntitlementsSequenceMutation.Data.AddEntitlementsSequence: ApiEntitlementsSequence {}

extension GraphQL.GetEntitlementsSequenceQuery.Data.GetEntitlementsSequence.Transition: ApiEntitlementsSequenceTransition {}
extension GraphQL.GetEntitlementsSequenceQuery.Data.GetEntitlementsSequence: ApiEntitlementsSequence {}

extension GraphQL.ListEntitlementsSequencesQuery.Data.ListEntitlementsSequence.Item.Transition: ApiEntitlementsSequenceTransition {}
extension GraphQL.ListEntitlementsSequencesQuery.Data.ListEntitlementsSequence.Item: ApiEntitlementsSequence {}

extension GraphQL.RemoveEntitlementsSequenceMutation.Data.RemoveEntitlementsSequence.Transition: ApiEntitlementsSequenceTransition {}
extension GraphQL.RemoveEntitlementsSequenceMutation.Data.RemoveEntitlementsSequence: ApiEntitlementsSequence {}

extension GraphQL.SetEntitlementsSequenceMutation.Data.SetEntitlementsSequence.Transition: ApiEntitlementsSequenceTransition {}
extension GraphQL.SetEntitlementsSequenceMutation.Data.SetEntitlementsSequence: ApiEntitlementsSequence {}

// MARK: - Entitlements Set

extension GraphQL.AddEntitlementsSetMutation.Data.AddEntitlementsSet.Entitlement: ApiEntitlement {}
extension GraphQL.AddEntitlementsSetMutation.Data.AddEntitlementsSet: ApiEntitlementsSet {}

extension GraphQL.GetEntitlementsSetQuery.Data.GetEntitlementsSet.Entitlement: ApiEntitlement {}
extension GraphQL.GetEntitlementsSetQuery.Data.GetEntitlementsSet: ApiEntitlementsSet {}

extension GraphQL.ListEntitlementsSetsQuery.Data.ListEntitlementsSet.Item.Entitlement: ApiEntitlement {}
extension GraphQL.ListEntitlementsSetsQuery.Data.ListEntitlementsSet.Item: ApiEntitlementsSet {}

extension GraphQL.SetEntitlementsSetMutation.Data.SetEntitlementsSet.Entitlement: ApiEntitlement {}
extension GraphQL.SetEntitlementsSetMutation.Data.SetEntitlementsSet: ApiEntitlementsSet {}

extension GraphQL.RemoveEntitlementsSetMutation.Data.RemoveEntitlementsSet.Entitlement: ApiEntitlement {}
extension GraphQL.RemoveEntitlementsSetMutation.Data.RemoveEntitlementsSet: ApiEntitlementsSet {}

// MARK: - User Entitlements Sequences

extension GraphQL.AccountStates: ApiAccountStates {}

extension GraphQL.ApplyEntitlementsSequenceToUserMutation.Data.ApplyEntitlementsSequenceToUser.Entitlement: ApiEntitlement {}
extension GraphQL.ApplyEntitlementsSequenceToUserMutation.Data.ApplyEntitlementsSequenceToUser.ExpendableEntitlement: ApiEntitlement {}
extension GraphQL.ApplyEntitlementsSequenceToUserMutation.Data.ApplyEntitlementsSequenceToUser: ApiUserEntitlements {}

extension GraphQL.ApplyEntitlementsSequenceToUsersMutation.Data.ApplyEntitlementsSequenceToUser.AsExternalUserEntitlements.Entitlement: ApiEntitlement {}
extension GraphQL.ApplyEntitlementsSequenceToUsersMutation.Data.ApplyEntitlementsSequenceToUser.AsExternalUserEntitlements.ExpendableEntitlement: ApiEntitlement {}
extension GraphQL.ApplyEntitlementsSequenceToUsersMutation.Data.ApplyEntitlementsSequenceToUser.AsExternalUserEntitlements: ApiUserEntitlements {}

// MARK: - User Entitlements Set

extension GraphQL.ApplyEntitlementsSetToUserMutation.Data.ApplyEntitlementsSetToUser.Entitlement: ApiEntitlement {}
extension GraphQL.ApplyEntitlementsSetToUserMutation.Data.ApplyEntitlementsSetToUser.ExpendableEntitlement: ApiEntitlement {}
extension GraphQL.ApplyEntitlementsSetToUserMutation.Data.ApplyEntitlementsSetToUser: ApiUserEntitlements {}

extension GraphQL.ApplyEntitlementsSetToUsersMutation.Data.ApplyEntitlementsSetToUser.AsExternalUserEntitlements.Entitlement: ApiEntitlement {}
extension GraphQL.ApplyEntitlementsSetToUsersMutation.Data.ApplyEntitlementsSetToUser.AsExternalUserEntitlements.ExpendableEntitlement: ApiEntitlement {}
extension GraphQL.ApplyEntitlementsSetToUsersMutation.Data.ApplyEntitlementsSetToUser.AsExternalUserEntitlements: ApiUserEntitlements {}

extension GraphQL.ApplyEntitlementsToUserMutation.Data.ApplyEntitlementsToUser.Entitlement: ApiEntitlement {}
extension GraphQL.ApplyEntitlementsToUserMutation.Data.ApplyEntitlementsToUser.ExpendableEntitlement: ApiEntitlement {}
extension GraphQL.ApplyEntitlementsToUserMutation.Data.ApplyEntitlementsToUser: ApiUserEntitlements {}

extension GraphQL.ApplyEntitlementsToUsersMutation.Data.ApplyEntitlementsToUser.AsExternalUserEntitlements.Entitlement: ApiEntitlement {}
extension GraphQL.ApplyEntitlementsToUsersMutation.Data.ApplyEntitlementsToUser.AsExternalUserEntitlements.ExpendableEntitlement: ApiEntitlement {}
extension GraphQL.ApplyEntitlementsToUsersMutation.Data.ApplyEntitlementsToUser.AsExternalUserEntitlements: ApiUserEntitlements {}

extension GraphQL.ApplyExpendableEntitlementsToUserMutation.Data.ApplyExpendableEntitlementsToUser.Entitlement: ApiEntitlement {}
extension GraphQL.ApplyExpendableEntitlementsToUserMutation.Data.ApplyExpendableEntitlementsToUser.ExpendableEntitlement: ApiEntitlement {}
extension GraphQL.ApplyExpendableEntitlementsToUserMutation.Data.ApplyExpendableEntitlementsToUser: ApiUserEntitlements {}

extension GraphQL.GetEntitlementsForUserQuery.Data.GetEntitlementsForUser.Entitlement.Entitlement: ApiEntitlement {}
extension GraphQL.GetEntitlementsForUserQuery.Data.GetEntitlementsForUser.Entitlement.ExpendableEntitlement: ApiEntitlement {}
extension GraphQL.GetEntitlementsForUserQuery.Data.GetEntitlementsForUser.Entitlement: ApiUserEntitlements {}
