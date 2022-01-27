// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package gdpr

import (
	"github.com/AccelByte/sample-apps/cmd/gdpr/dataDeletion"
	"github.com/AccelByte/sample-apps/cmd/gdpr/dataRetrieval"
	"github.com/spf13/cobra"
)

// GdprCmd represents the service's child command
var GdprCmd = &cobra.Command{
	Use:   "Gdpr",
	Short: "Gdpr to get all the commands",
}

func init() {
	GdprCmd.AddCommand(dataDeletion.AdminGetListDeletionDataRequestCmd)
	GdprCmd.AddCommand(dataRetrieval.GetAdminEmailConfigurationCmd)
	GdprCmd.AddCommand(dataRetrieval.UpdateAdminEmailConfigurationCmd)
	GdprCmd.AddCommand(dataRetrieval.SaveAdminEmailConfigurationCmd)
	GdprCmd.AddCommand(dataRetrieval.DeleteAdminEmailConfigurationCmd)
	GdprCmd.AddCommand(dataRetrieval.AdminGetListPersonalDataRequestCmd)
	GdprCmd.AddCommand(dataDeletion.AdminGetUserAccountDeletionRequestCmd)
	GdprCmd.AddCommand(dataDeletion.AdminSubmitUserAccountDeletionRequestCmd)
	GdprCmd.AddCommand(dataDeletion.AdminCancelUserAccountDeletionRequestCmd)
	GdprCmd.AddCommand(dataRetrieval.AdminGetUserPersonalDataRequestsCmd)
	GdprCmd.AddCommand(dataRetrieval.AdminRequestDataRetrievalCmd)
	GdprCmd.AddCommand(dataRetrieval.AdminCancelUserPersonalDataRequestCmd)
	GdprCmd.AddCommand(dataRetrieval.AdminGeneratePersonalDataURLCmd)
	GdprCmd.AddCommand(dataDeletion.PublicSubmitUserAccountDeletionRequestCmd)
	GdprCmd.AddCommand(dataDeletion.PublicCancelUserAccountDeletionRequestCmd)
	GdprCmd.AddCommand(dataDeletion.PublicGetUserAccountDeletionStatusCmd)
	GdprCmd.AddCommand(dataRetrieval.PublicGetUserPersonalDataRequestsCmd)
	GdprCmd.AddCommand(dataRetrieval.PublicRequestDataRetrievalCmd)
	GdprCmd.AddCommand(dataRetrieval.PublicCancelUserPersonalDataRequestCmd)
	GdprCmd.AddCommand(dataRetrieval.PublicGeneratePersonalDataURLCmd)
}
