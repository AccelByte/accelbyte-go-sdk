// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_content"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminDeleteContentScreenshotCmd represents the adminDeleteContentScreenshot command
var adminDeleteContentScreenshotCmd = &cobra.Command{
	Use:   "adminDeleteContentScreenshot",
	Short: "Admin delete content screenshot",
	Long:  `Admin delete content screenshot`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentService := &ugc.AdminContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		screenshotId, _ := cmd.Flags().GetString("screenshotId")
		input := &admin_content.AdminDeleteContentScreenshotParams{
			ContentID:    contentId,
			Namespace:    namespace,
			ScreenshotID: screenshotId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := adminContentService.AdminDeleteContentScreenshot(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminDeleteContentScreenshotCmd)
	adminDeleteContentScreenshotCmd.Flags().StringP("contentId", "c", " ", "Content id")
	_ = adminDeleteContentScreenshotCmd.MarkFlagRequired("contentId")
	adminDeleteContentScreenshotCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminDeleteContentScreenshotCmd.MarkFlagRequired("namespace")
	adminDeleteContentScreenshotCmd.Flags().StringP("screenshotId", "s", " ", "Screenshot id")
	_ = adminDeleteContentScreenshotCmd.MarkFlagRequired("screenshotId")
}
