// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package legal

import (
	"github.com/AccelByte/sample-apps/cmd/legal/adminUserAgreement"
	"github.com/AccelByte/sample-apps/cmd/legal/adminUserEligibilities"
	"github.com/AccelByte/sample-apps/cmd/legal/agreement"
	"github.com/AccelByte/sample-apps/cmd/legal/anonymization"
	"github.com/AccelByte/sample-apps/cmd/legal/baseLegalPolicies"
	"github.com/AccelByte/sample-apps/cmd/legal/eligibilities"
	"github.com/AccelByte/sample-apps/cmd/legal/localizedPolicyVersions"
	"github.com/AccelByte/sample-apps/cmd/legal/policies"
	"github.com/AccelByte/sample-apps/cmd/legal/policyVersions"
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
	LegalCmd.AddCommand(adminUserAgreement.IndirectBulkAcceptVersionedPolicyCmd)
	LegalCmd.AddCommand(adminUserEligibilities.AdminRetrieveEligibilitiesCmd)
	LegalCmd.AddCommand(policies.RetrievePoliciesCmd)
	LegalCmd.AddCommand(policyVersions.UpdatePolicyVersionCmd)
	LegalCmd.AddCommand(policyVersions.PublishPolicyVersionCmd)
	LegalCmd.AddCommand(policies.UpdatePolicyCmd)
	LegalCmd.AddCommand(policies.SetDefaultPolicy1Cmd)
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
	LegalCmd.AddCommand(localizedPolicyVersions.RetrieveSingleLocalizedPolicyVersion1Cmd)
	LegalCmd.AddCommand(policyVersions.RetrievePolicyVersionsCmd)
	LegalCmd.AddCommand(policies.RetrieveLatestPoliciesCmd)
	LegalCmd.AddCommand(policies.RetrieveLatestPoliciesPublicCmd)
	LegalCmd.AddCommand(policies.RetrieveLatestPoliciesByNamespaceAndCountryPublicCmd)
	LegalCmd.AddCommand(utility.CheckReadinessCmd)
}
