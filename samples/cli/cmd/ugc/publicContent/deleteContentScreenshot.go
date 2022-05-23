// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicContent

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteContentScreenshotCmd represents the DeleteContentScreenshot command
var DeleteContentScreenshotCmd = &cobra.Command{
	Use:   "deleteContentScreenshot",
	Short: "Delete content screenshot",
	Long:  `Delete content screenshot`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentService := &ugc.PublicContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		screenshotId, _ := cmd.Flags().GetString("screenshotId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_content.DeleteContentScreenshotParams{
			ContentID:    contentId,
			Namespace:    namespace,
			ScreenshotID: screenshotId,
			UserID:       userId,
		}
		errInput := publicContentService.DeleteContentScreenshotShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DeleteContentScreenshotCmd.Flags().String("contentId", "", "Content id")
	_ = DeleteContentScreenshotCmd.MarkFlagRequired("contentId")
	DeleteContentScreenshotCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteContentScreenshotCmd.MarkFlagRequired("namespace")
	DeleteContentScreenshotCmd.Flags().String("screenshotId", "", "Screenshot id")
	_ = DeleteContentScreenshotCmd.MarkFlagRequired("screenshotId")
	DeleteContentScreenshotCmd.Flags().String("userId", "", "User id")
	_ = DeleteContentScreenshotCmd.MarkFlagRequired("userId")
}
