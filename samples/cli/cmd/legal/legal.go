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
	"github.com/AccelByte/sample-apps/cmd/legal/policiesWithNamespaceV2"
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
	LegalCmd.AddCommand(agreement.OldRetrieveAcceptedAgreementsCmd)
	LegalCmd.AddCommand(agreement.OldRetrieveAllUsersByPolicyVersionCmd)
	LegalCmd.AddCommand(baseLegalPolicies.RetrieveAllLegalPoliciesCmd)
	LegalCmd.AddCommand(baseLegalPolicies.OldCreatePolicyCmd)
	LegalCmd.AddCommand(baseLegalPolicies.OldRetrieveSinglePolicyCmd)
	LegalCmd.AddCommand(baseLegalPolicies.OldPartialUpdatePolicyCmd)
	LegalCmd.AddCommand(baseLegalPolicies.OldRetrievePolicyCountryCmd)
	LegalCmd.AddCommand(localizedPolicyVersions.OldRetrieveLocalizedPolicyVersionsCmd)
	LegalCmd.AddCommand(localizedPolicyVersions.OldCreateLocalizedPolicyVersionCmd)
	LegalCmd.AddCommand(localizedPolicyVersions.OldRetrieveSingleLocalizedPolicyVersionCmd)
	LegalCmd.AddCommand(localizedPolicyVersions.OldUpdateLocalizedPolicyVersionCmd)
	LegalCmd.AddCommand(localizedPolicyVersions.OldRequestPresignedURLCmd)
	LegalCmd.AddCommand(localizedPolicyVersions.OldSetDefaultLocalizedPolicyCmd)
	LegalCmd.AddCommand(agreementWithNamespace.RetrieveAcceptedAgreementsForMultiUsersCmd)
	LegalCmd.AddCommand(agreementWithNamespace.RetrieveAcceptedAgreementsCmd)
	LegalCmd.AddCommand(agreementWithNamespace.RetrieveAllUsersByPolicyVersionCmd)
	LegalCmd.AddCommand(agreementWithNamespace.DownloadExportedAgreementsInCSVCmd)
	LegalCmd.AddCommand(agreementWithNamespace.InitiateExportAgreementsToCSVCmd)
	LegalCmd.AddCommand(baseLegalPoliciesWithNamespace.RetrieveAllLegalPoliciesByNamespaceCmd)
	LegalCmd.AddCommand(baseLegalPoliciesWithNamespace.CreatePolicyCmd)
	LegalCmd.AddCommand(baseLegalPoliciesWithNamespace.RetrieveSinglePolicyCmd)
	LegalCmd.AddCommand(baseLegalPoliciesWithNamespace.DeleteBasePolicyCmd)
	LegalCmd.AddCommand(baseLegalPoliciesWithNamespace.PartialUpdatePolicyCmd)
	LegalCmd.AddCommand(baseLegalPoliciesWithNamespace.RetrievePolicyCountryCmd)
	LegalCmd.AddCommand(baseLegalPoliciesWithNamespace.RetrieveAllPoliciesFromBasePolicyCmd)
	LegalCmd.AddCommand(baseLegalPoliciesWithNamespace.CreatePolicyUnderBasePolicyCmd)
	LegalCmd.AddCommand(localizedPolicyVersionsWithNamespace.DeleteLocalizedPolicyCmd)
	LegalCmd.AddCommand(localizedPolicyVersionsWithNamespace.RetrieveLocalizedPolicyVersionsCmd)
	LegalCmd.AddCommand(localizedPolicyVersionsWithNamespace.CreateLocalizedPolicyVersionCmd)
	LegalCmd.AddCommand(localizedPolicyVersionsWithNamespace.RetrieveSingleLocalizedPolicyVersionCmd)
	LegalCmd.AddCommand(localizedPolicyVersionsWithNamespace.UpdateLocalizedPolicyVersionCmd)
	LegalCmd.AddCommand(localizedPolicyVersionsWithNamespace.RequestPresignedURLCmd)
	LegalCmd.AddCommand(localizedPolicyVersionsWithNamespace.SetDefaultLocalizedPolicyCmd)
	LegalCmd.AddCommand(policyVersionsWithNamespace.DeletePolicyVersionCmd)
	LegalCmd.AddCommand(policyVersionsWithNamespace.UpdatePolicyVersionCmd)
	LegalCmd.AddCommand(policyVersionsWithNamespace.PublishPolicyVersionCmd)
	LegalCmd.AddCommand(policyVersionsWithNamespace.UnpublishPolicyVersionCmd)
	LegalCmd.AddCommand(policiesWithNamespace.DeletePolicyCmd)
	LegalCmd.AddCommand(policiesWithNamespace.UpdatePolicyCmd)
	LegalCmd.AddCommand(policiesWithNamespace.SetDefaultPolicyCmd)
	LegalCmd.AddCommand(policyVersionsWithNamespace.RetrieveSinglePolicyVersionCmd)
	LegalCmd.AddCommand(policyVersionsWithNamespace.CreatePolicyVersionCmd)
	LegalCmd.AddCommand(baseLegalPoliciesWithNamespace.RetrieveAllPolicyTypesCmd)
	LegalCmd.AddCommand(adminUserAgreement.IndirectBulkAcceptVersionedPolicyCmd)
	LegalCmd.AddCommand(adminUserEligibilities.AdminRetrieveEligibilitiesCmd)
	LegalCmd.AddCommand(policies.RetrievePoliciesCmd)
	LegalCmd.AddCommand(policyVersions.OldUpdatePolicyVersionCmd)
	LegalCmd.AddCommand(policyVersions.OldPublishPolicyVersionCmd)
	LegalCmd.AddCommand(policies.OldUpdatePolicyCmd)
	LegalCmd.AddCommand(policies.OldSetDefaultPolicyCmd)
	LegalCmd.AddCommand(policyVersions.OldRetrieveSinglePolicyVersionCmd)
	LegalCmd.AddCommand(policyVersions.OldCreatePolicyVersionCmd)
	LegalCmd.AddCommand(baseLegalPolicies.OldRetrieveAllPolicyTypesCmd)
	LegalCmd.AddCommand(userInfo.GetUserInfoStatusCmd)
	LegalCmd.AddCommand(userInfo.SyncUserInfoCmd)
	LegalCmd.AddCommand(userInfo.InvalidateUserInfoCacheCmd)
	LegalCmd.AddCommand(anonymization.AnonymizeUserAgreementCmd)
	LegalCmd.AddCommand(agreement.PublicChangePreferenceConsentCmd)
	LegalCmd.AddCommand(agreement.AcceptVersionedPolicyCmd)
	LegalCmd.AddCommand(agreement.RetrieveAgreementsPublicCmd)
	LegalCmd.AddCommand(agreement.BulkAcceptVersionedPolicyCmd)
	LegalCmd.AddCommand(agreement.IndirectBulkAcceptVersionedPolicyV2Cmd)
	LegalCmd.AddCommand(agreement.PublicIndirectBulkAcceptVersionedPolicyCmd)
	LegalCmd.AddCommand(eligibilities.RetrieveEligibilitiesPublicCmd)
	LegalCmd.AddCommand(eligibilities.RetrieveEligibilitiesPublicIndirectCmd)
	LegalCmd.AddCommand(localizedPolicyVersions.OldPublicRetrieveSingleLocalizedPolicyVersionCmd)
	LegalCmd.AddCommand(localizedPolicyVersionsWithNamespace.PublicRetrieveSingleLocalizedPolicyVersionCmd)
	LegalCmd.AddCommand(policies.RetrieveCountryListWithPoliciesCmd)
	LegalCmd.AddCommand(policies.RetrieveLatestPoliciesCmd)
	LegalCmd.AddCommand(policies.RetrieveLatestPoliciesPublicCmd)
	LegalCmd.AddCommand(policies.OldRetrieveLatestPoliciesByNamespaceAndCountryPublicCmd)
	LegalCmd.AddCommand(utility.CheckReadinessCmd)
	LegalCmd.AddCommand(policiesWithNamespaceV2.RetrieveLatestPoliciesByNamespaceAndCountryPublicCmd)
}
