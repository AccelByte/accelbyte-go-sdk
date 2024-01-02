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

// GetUserStagingContentByIDCmd represents the GetUserStagingContentByID command
var GetUserStagingContentByIDCmd = &cobra.Command{
	Use:   "getUserStagingContentByID",
	Short: "Get user staging content by ID",
	Long:  `Get user staging content by ID`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicStagingContentService := &ugc.PublicStagingContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_staging_content.GetUserStagingContentByIDParams{
			ContentID: contentId,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := publicStagingContentService.GetUserStagingContentByIDShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserStagingContentByIDCmd.Flags().String("contentId", "", "Content id")
	_ = GetUserStagingContentByIDCmd.MarkFlagRequired("contentId")
	GetUserStagingContentByIDCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserStagingContentByIDCmd.MarkFlagRequired("namespace")
	GetUserStagingContentByIDCmd.Flags().String("userId", "", "User id")
	_ = GetUserStagingContentByIDCmd.MarkFlagRequired("userId")
}
