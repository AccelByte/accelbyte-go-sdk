// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicStagingContent

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_staging_content"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ListUserStagingContentsCmd represents the ListUserStagingContents command
var ListUserStagingContentsCmd = &cobra.Command{
	Use:   "listUserStagingContents",
	Short: "List user staging contents",
	Long:  `List user staging contents`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicStagingContentService := &ugc.PublicStagingContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		status, _ := cmd.Flags().GetString("status")
		input := &public_staging_content.ListUserStagingContentsParams{
			Namespace: namespace,
			UserID:    userId,
			Limit:     &limit,
			Offset:    &offset,
			SortBy:    &sortBy,
			Status:    &status,
		}
		ok, errOK := publicStagingContentService.ListUserStagingContentsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ListUserStagingContentsCmd.Flags().String("namespace", "", "Namespace")
	_ = ListUserStagingContentsCmd.MarkFlagRequired("namespace")
	ListUserStagingContentsCmd.Flags().String("userId", "", "User id")
	_ = ListUserStagingContentsCmd.MarkFlagRequired("userId")
	ListUserStagingContentsCmd.Flags().Int64("limit", 20, "Limit")
	ListUserStagingContentsCmd.Flags().Int64("offset", 0, "Offset")
	ListUserStagingContentsCmd.Flags().String("sortBy", "", "Sort by")
	ListUserStagingContentsCmd.Flags().String("status", "", "Status")
}
