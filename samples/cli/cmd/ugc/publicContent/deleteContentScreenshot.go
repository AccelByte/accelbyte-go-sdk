// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteContentScreenshotCmd represents the deleteContentScreenshot command
var deleteContentScreenshotCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := publicContentService.DeleteContentScreenshot(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteContentScreenshotCmd)
	deleteContentScreenshotCmd.Flags().StringP("contentId", "c", " ", "Content id")
	_ = deleteContentScreenshotCmd.MarkFlagRequired("contentId")
	deleteContentScreenshotCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = deleteContentScreenshotCmd.MarkFlagRequired("namespace")
	deleteContentScreenshotCmd.Flags().StringP("screenshotId", "s", " ", "Screenshot id")
	_ = deleteContentScreenshotCmd.MarkFlagRequired("screenshotId")
	deleteContentScreenshotCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = deleteContentScreenshotCmd.MarkFlagRequired("userId")
}
