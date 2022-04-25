// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package basic

import (
	"github.com/AccelByte/sample-apps/cmd/basic/anonymization"
	"github.com/AccelByte/sample-apps/cmd/basic/equ8Config"
	"github.com/AccelByte/sample-apps/cmd/basic/fileUpload"
	"github.com/AccelByte/sample-apps/cmd/basic/misc"
	"github.com/AccelByte/sample-apps/cmd/basic/namespace"
	"github.com/AccelByte/sample-apps/cmd/basic/userAction"
	"github.com/AccelByte/sample-apps/cmd/basic/userProfile"
	"github.com/spf13/cobra"
)

// BasicCmd represents the service's child command
var BasicCmd = &cobra.Command{
	Use:   "Basic",
	Short: "Basic to get all the commands",
}

func init() {
	BasicCmd.AddCommand(namespace.GetNamespacesCmd)
	BasicCmd.AddCommand(namespace.CreateNamespaceCmd)
	BasicCmd.AddCommand(namespace.GetNamespaceCmd)
	BasicCmd.AddCommand(namespace.DeleteNamespaceCmd)
	BasicCmd.AddCommand(userAction.GetActionsCmd)
	BasicCmd.AddCommand(userAction.BanUsersCmd)
	BasicCmd.AddCommand(userAction.GetBannedUsersCmd)
	BasicCmd.AddCommand(userAction.ReportUserCmd)
	BasicCmd.AddCommand(userAction.GetUserStatusCmd)
	BasicCmd.AddCommand(userAction.UnBanUsersCmd)
	BasicCmd.AddCommand(namespace.UpdateNamespaceCmd)
	BasicCmd.AddCommand(equ8Config.GetConfigCmd)
	BasicCmd.AddCommand(equ8Config.DeleteConfigCmd)
	BasicCmd.AddCommand(equ8Config.UpdateConfigCmd)
	BasicCmd.AddCommand(fileUpload.GeneratedUploadUrlCmd)
	BasicCmd.AddCommand(misc.GetCountriesCmd)
	BasicCmd.AddCommand(misc.GetCountryGroupsCmd)
	BasicCmd.AddCommand(misc.AddCountryGroupCmd)
	BasicCmd.AddCommand(misc.UpdateCountryGroupCmd)
	BasicCmd.AddCommand(misc.DeleteCountryGroupCmd)
	BasicCmd.AddCommand(misc.GetLanguagesCmd)
	BasicCmd.AddCommand(misc.GetTimeZonesCmd)
	BasicCmd.AddCommand(userProfile.AdminGetUserProfilePublicInfoByIdsCmd)
	BasicCmd.AddCommand(namespace.GetNamespacePublisherCmd)
	BasicCmd.AddCommand(namespace.ChangeNamespaceStatusCmd)
	BasicCmd.AddCommand(anonymization.AnonymizeUserProfileCmd)
	BasicCmd.AddCommand(fileUpload.GeneratedUserUploadContentUrlCmd)
	BasicCmd.AddCommand(userProfile.GetUserProfileInfoCmd)
	BasicCmd.AddCommand(userProfile.UpdateUserProfileCmd)
	BasicCmd.AddCommand(userProfile.DeleteUserProfileCmd)
	BasicCmd.AddCommand(userProfile.GetCustomAttributesInfoCmd)
	BasicCmd.AddCommand(userProfile.UpdateCustomAttributesPartiallyCmd)
	BasicCmd.AddCommand(userProfile.GetPrivateCustomAttributesInfoCmd)
	BasicCmd.AddCommand(userProfile.UpdatePrivateCustomAttributesPartiallyCmd)
	BasicCmd.AddCommand(userProfile.UpdateUserProfileStatusCmd)
	BasicCmd.AddCommand(misc.PublicGetTimeCmd)
	BasicCmd.AddCommand(namespace.PublicGetNamespacesCmd)
	BasicCmd.AddCommand(fileUpload.PublicGeneratedUploadUrlCmd)
	BasicCmd.AddCommand(misc.PublicGetCountriesCmd)
	BasicCmd.AddCommand(misc.PublicGetLanguagesCmd)
	BasicCmd.AddCommand(misc.PublicGetTimeZonesCmd)
	BasicCmd.AddCommand(userProfile.PublicGetUserProfilePublicInfoByIdsCmd)
	BasicCmd.AddCommand(namespace.PublicGetNamespacePublisherCmd)
	BasicCmd.AddCommand(userProfile.GetMyProfileInfoCmd)
	BasicCmd.AddCommand(userProfile.UpdateMyProfileCmd)
	BasicCmd.AddCommand(userProfile.CreateMyProfileCmd)
	BasicCmd.AddCommand(userProfile.GetMyZipCodeCmd)
	BasicCmd.AddCommand(userProfile.UpdateMyZipCodeCmd)
	BasicCmd.AddCommand(userAction.PublicReportUserCmd)
	BasicCmd.AddCommand(fileUpload.PublicGeneratedUserUploadContentUrlCmd)
	BasicCmd.AddCommand(userProfile.PublicGetUserProfileInfoCmd)
	BasicCmd.AddCommand(userProfile.PublicUpdateUserProfileCmd)
	BasicCmd.AddCommand(userProfile.PublicCreateUserProfileCmd)
	BasicCmd.AddCommand(userProfile.PublicGetCustomAttributesInfoCmd)
	BasicCmd.AddCommand(userProfile.PublicUpdateCustomAttributesPartiallyCmd)
	BasicCmd.AddCommand(userProfile.PublicGetUserProfilePublicInfoCmd)
	BasicCmd.AddCommand(userProfile.PublicUpdateUserProfileStatusCmd)
}
