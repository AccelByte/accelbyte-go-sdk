// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminStagingContent

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_staging_content"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminListUserStagingContentsCmd represents the AdminListUserStagingContents command
var AdminListUserStagingContentsCmd = &cobra.Command{
	Use:   "adminListUserStagingContents",
	Short: "Admin list user staging contents",
	Long:  `Admin list user staging contents`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminStagingContentService := &ugc.AdminStagingContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		status, _ := cmd.Flags().GetString("status")
		input := &admin_staging_content.AdminListUserStagingContentsParams{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
			SortBy:    &sortBy,
			Status:    &status,
		}
		ok, errOK := adminStagingContentService.AdminListUserStagingContentsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminListUserStagingContentsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminListUserStagingContentsCmd.MarkFlagRequired("namespace")
	AdminListUserStagingContentsCmd.Flags().String("userId", "", "User id")
	_ = AdminListUserStagingContentsCmd.MarkFlagRequired("userId")
	AdminListUserStagingContentsCmd.Flags().Int64("limit", 20, "Limit")
	AdminListUserStagingContentsCmd.Flags().Int64("offset", 0, "Offset")
	AdminListUserStagingContentsCmd.Flags().String("sortBy", "", "Sort by")
	AdminListUserStagingContentsCmd.Flags().String("status", "", "Status")
}
