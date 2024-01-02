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

// DeleteUserStagingContentByIDCmd represents the DeleteUserStagingContentByID command
var DeleteUserStagingContentByIDCmd = &cobra.Command{
	Use:   "deleteUserStagingContentByID",
	Short: "Delete user staging content by ID",
	Long:  `Delete user staging content by ID`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicStagingContentService := &ugc.PublicStagingContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_staging_content.DeleteUserStagingContentByIDParams{
			ContentID: contentId,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := publicStagingContentService.DeleteUserStagingContentByIDShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteUserStagingContentByIDCmd.Flags().String("contentId", "", "Content id")
	_ = DeleteUserStagingContentByIDCmd.MarkFlagRequired("contentId")
	DeleteUserStagingContentByIDCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteUserStagingContentByIDCmd.MarkFlagRequired("namespace")
	DeleteUserStagingContentByIDCmd.Flags().String("userId", "", "User id")
	_ = DeleteUserStagingContentByIDCmd.MarkFlagRequired("userId")
}
