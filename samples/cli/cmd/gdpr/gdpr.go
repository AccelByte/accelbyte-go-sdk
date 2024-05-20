// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package gdpr

import (
	"github.com/AccelByte/sample-apps/cmd/gdpr/configuration"
	"github.com/AccelByte/sample-apps/cmd/gdpr/dataDeletion"
	"github.com/AccelByte/sample-apps/cmd/gdpr/dataRetrieval"
	"github.com/AccelByte/sample-apps/cmd/gdpr/platformAccountClosureClient"
	"github.com/AccelByte/sample-apps/cmd/gdpr/platformAccountClosureHistory"
	"github.com/spf13/cobra"
)

// GdprCmd represents the service's child command
var GdprCmd = &cobra.Command{
	Use:   "Gdpr",
	Short: "Gdpr to get all the commands",
}

func init() {
	GdprCmd.AddCommand(dataDeletion.AdminGetListDeletionDataRequestCmd)
	GdprCmd.AddCommand(configuration.GetAdminEmailConfigurationCmd)
	GdprCmd.AddCommand(configuration.UpdateAdminEmailConfigurationCmd)
	GdprCmd.AddCommand(configuration.SaveAdminEmailConfigurationCmd)
	GdprCmd.AddCommand(configuration.DeleteAdminEmailConfigurationCmd)
	GdprCmd.AddCommand(platformAccountClosureClient.AdminGetPlatformAccountClosureClientCmd)
	GdprCmd.AddCommand(platformAccountClosureClient.AdminUpdatePlatformAccountClosureClientCmd)
	GdprCmd.AddCommand(platformAccountClosureClient.AdminDeletePlatformAccountClosureClientCmd)
	GdprCmd.AddCommand(dataRetrieval.AdminGetListPersonalDataRequestCmd)
	GdprCmd.AddCommand(configuration.AdminGetServicesConfigurationCmd)
	GdprCmd.AddCommand(configuration.AdminUpdateServicesConfigurationCmd)
	GdprCmd.AddCommand(configuration.AdminResetServicesConfigurationCmd)
	GdprCmd.AddCommand(configuration.AdminGetPlatformAccountClosureServicesConfigurationCmd)
	GdprCmd.AddCommand(configuration.AdminUpdatePlatformAccountClosureServicesConfigurationCmd)
	GdprCmd.AddCommand(configuration.AdminResetPlatformAccountClosureServicesConfigurationCmd)
	GdprCmd.AddCommand(platformAccountClosureHistory.AdminGetUserPlatformAccountClosureHistoriesCmd)
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
	GdprCmd.AddCommand(dataDeletion.PublicSubmitMyAccountDeletionRequestCmd)
	GdprCmd.AddCommand(dataDeletion.PublicCancelMyAccountDeletionRequestCmd)
	GdprCmd.AddCommand(dataDeletion.PublicGetMyAccountDeletionStatusCmd)
}
