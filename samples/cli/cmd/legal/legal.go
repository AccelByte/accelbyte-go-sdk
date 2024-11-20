// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package legal

import (
	"github.com/AccelByte/sample-apps/cmd/legal/adminUserAgreement"
	"github.com/AccelByte/sample-apps/cmd/legal/adminUserEligibilities"
	"github.com/AccelByte/sample-apps/cmd/legal/agreement"
	"github.com/AccelByte/sample-apps/cmd/legal/agreementWithNamespace"
	"github.com/AccelByte/sample-apps/cmd/legal/anonymization"
	"github.com/AccelByte/sample-apps/cmd/legal/baseLegalPolicies"
	"github.com/AccelByte/sample-apps/cmd/legal/baseLegalPoliciesWithNamespace"
	"github.com/AccelByte/sample-apps/cmd/legal/eligibilities"
	"github.com/AccelByte/sample-apps/cmd/legal/localizedPolicyVersions"
	"github.com/AccelByte/sample-apps/cmd/legal/localizedPolicyVersionsWithNamespace"
	"github.com/AccelByte/sample-apps/cmd/legal/policies"
	"github.com/AccelByte/sample-apps/cmd/legal/policiesWithNamespace"
	"github.com/AccelByte/sample-apps/cmd/legal/policyVersions"
	"github.com/AccelByte/sample-apps/cmd/legal/policyVersionsWithNamespace"
	"github.com/AccelByte/sample-apps/cmd/legal/userInfo"
	"github.com/AccelByte/sample-apps/cmd/legal/utility"
	"github.com/spf13/cobra"
)

// LegalCmd represents the service's child command
var LegalCmd = &cobra.Command{
	Use:   "Legal",
	Short: "Legal to get all the commands",
}

func init() {
	LegalCmd.AddCommand(agreement.ChangePreferenceConsentCmd)
	LegalCmd.AddCommand(agreement.RetrieveAcceptedAgreementsCmd)
	LegalCmd.AddCommand(agreement.RetrieveAllUsersByPolicyVersionCmd)
	LegalCmd.AddCommand(baseLegalPolicies.RetrieveAllLegalPoliciesCmd)
	LegalCmd.AddCommand(baseLegalPolicies.CreatePolicyCmd)
	LegalCmd.AddCommand(baseLegalPolicies.RetrieveSinglePolicyCmd)
	LegalCmd.AddCommand(baseLegalPolicies.PartialUpdatePolicyCmd)
	LegalCmd.AddCommand(baseLegalPolicies.RetrievePolicyCountryCmd)
	LegalCmd.AddCommand(localizedPolicyVersions.RetrieveLocalizedPolicyVersionsCmd)
	LegalCmd.AddCommand(localizedPolicyVersions.CreateLocalizedPolicyVersionCmd)
	LegalCmd.AddCommand(localizedPolicyVersions.RetrieveSingleLocalizedPolicyVersionCmd)
	LegalCmd.AddCommand(localizedPolicyVersions.UpdateLocalizedPolicyVersionCmd)
	LegalCmd.AddCommand(localizedPolicyVersions.RequestPresignedURLCmd)
	LegalCmd.AddCommand(localizedPolicyVersions.SetDefaultPolicyCmd)
	LegalCmd.AddCommand(agreementWithNamespace.RetrieveAcceptedAgreementsForMultiUsersCmd)
	LegalCmd.AddCommand(agreementWithNamespace.RetrieveAcceptedAgreements1Cmd)
	LegalCmd.AddCommand(agreementWithNamespace.RetrieveAllUsersByPolicyVersion1Cmd)
	LegalCmd.AddCommand(agreementWithNamespace.DownloadExportedAgreementsInCSVCmd)
	LegalCmd.AddCommand(agreementWithNamespace.InitiateExportAgreementsToCSVCmd)
	LegalCmd.AddCommand(baseLegalPoliciesWithNamespace.RetrieveAllLegalPoliciesByNamespaceCmd)
	LegalCmd.AddCommand(baseLegalPoliciesWithNamespace.CreatePolicy1Cmd)
	LegalCmd.AddCommand(baseLegalPoliciesWithNamespace.RetrieveSinglePolicy1Cmd)
	LegalCmd.AddCommand(baseLegalPoliciesWithNamespace.DeleteBasePolicyCmd)
	LegalCmd.AddCommand(baseLegalPoliciesWithNamespace.PartialUpdatePolicy1Cmd)
	LegalCmd.AddCommand(baseLegalPoliciesWithNamespace.RetrievePolicyCountry1Cmd)
	LegalCmd.AddCommand(baseLegalPoliciesWithNamespace.RetrieveAllPoliciesFromBasePolicyCmd)
	LegalCmd.AddCommand(baseLegalPoliciesWithNamespace.CreatePolicyUnderBasePolicyCmd)
	LegalCmd.AddCommand(localizedPolicyVersionsWithNamespace.DeleteLocalizedPolicyCmd)
	LegalCmd.AddCommand(localizedPolicyVersionsWithNamespace.RetrieveLocalizedPolicyVersions1Cmd)
	LegalCmd.AddCommand(localizedPolicyVersionsWithNamespace.CreateLocalizedPolicyVersion1Cmd)
	LegalCmd.AddCommand(localizedPolicyVersionsWithNamespace.RetrieveSingleLocalizedPolicyVersion1Cmd)
	LegalCmd.AddCommand(localizedPolicyVersionsWithNamespace.UpdateLocalizedPolicyVersion1Cmd)
	LegalCmd.AddCommand(localizedPolicyVersionsWithNamespace.RequestPresignedURL1Cmd)
	LegalCmd.AddCommand(localizedPolicyVersionsWithNamespace.SetDefaultPolicy1Cmd)
	LegalCmd.AddCommand(policyVersionsWithNamespace.DeletePolicyVersionCmd)
	LegalCmd.AddCommand(policyVersionsWithNamespace.UpdatePolicyVersion1Cmd)
	LegalCmd.AddCommand(policyVersionsWithNamespace.PublishPolicyVersion1Cmd)
	LegalCmd.AddCommand(policyVersionsWithNamespace.UnpublishPolicyVersionCmd)
	LegalCmd.AddCommand(policiesWithNamespace.DeletePolicyCmd)
	LegalCmd.AddCommand(policiesWithNamespace.UpdatePolicy1Cmd)
	LegalCmd.AddCommand(policiesWithNamespace.SetDefaultPolicy3Cmd)
	LegalCmd.AddCommand(policyVersionsWithNamespace.RetrieveSinglePolicyVersion1Cmd)
	LegalCmd.AddCommand(policyVersionsWithNamespace.CreatePolicyVersion1Cmd)
	LegalCmd.AddCommand(baseLegalPoliciesWithNamespace.RetrieveAllPolicyTypes1Cmd)
	LegalCmd.AddCommand(adminUserAgreement.IndirectBulkAcceptVersionedPolicyCmd)
	LegalCmd.AddCommand(adminUserEligibilities.AdminRetrieveEligibilitiesCmd)
	LegalCmd.AddCommand(policies.RetrievePoliciesCmd)
	LegalCmd.AddCommand(policyVersions.UpdatePolicyVersionCmd)
	LegalCmd.AddCommand(policyVersions.PublishPolicyVersionCmd)
	LegalCmd.AddCommand(policies.UpdatePolicyCmd)
	LegalCmd.AddCommand(policies.SetDefaultPolicy2Cmd)
	LegalCmd.AddCommand(policyVersions.RetrieveSinglePolicyVersionCmd)
	LegalCmd.AddCommand(policyVersions.CreatePolicyVersionCmd)
	LegalCmd.AddCommand(baseLegalPolicies.RetrieveAllPolicyTypesCmd)
	LegalCmd.AddCommand(userInfo.GetUserInfoStatusCmd)
	LegalCmd.AddCommand(userInfo.SyncUserInfoCmd)
	LegalCmd.AddCommand(userInfo.InvalidateUserInfoCacheCmd)
	LegalCmd.AddCommand(anonymization.AnonymizeUserAgreementCmd)
	LegalCmd.AddCommand(agreement.ChangePreferenceConsent1Cmd)
	LegalCmd.AddCommand(agreement.AcceptVersionedPolicyCmd)
	LegalCmd.AddCommand(agreement.RetrieveAgreementsPublicCmd)
	LegalCmd.AddCommand(agreement.BulkAcceptVersionedPolicyCmd)
	LegalCmd.AddCommand(agreement.IndirectBulkAcceptVersionedPolicyV2Cmd)
	LegalCmd.AddCommand(agreement.IndirectBulkAcceptVersionedPolicy1Cmd)
	LegalCmd.AddCommand(eligibilities.RetrieveEligibilitiesPublicCmd)
	LegalCmd.AddCommand(eligibilities.RetrieveEligibilitiesPublicIndirectCmd)
	LegalCmd.AddCommand(localizedPolicyVersions.RetrieveSingleLocalizedPolicyVersion2Cmd)
	LegalCmd.AddCommand(localizedPolicyVersionsWithNamespace.RetrieveSingleLocalizedPolicyVersion3Cmd)
	LegalCmd.AddCommand(policies.RetrieveCountryListWithPoliciesCmd)
	LegalCmd.AddCommand(policies.RetrieveLatestPoliciesCmd)
	LegalCmd.AddCommand(policies.RetrieveLatestPoliciesPublicCmd)
	LegalCmd.AddCommand(policies.RetrieveLatestPoliciesByNamespaceAndCountryPublicCmd)
	LegalCmd.AddCommand(utility.CheckReadinessCmd)
}
