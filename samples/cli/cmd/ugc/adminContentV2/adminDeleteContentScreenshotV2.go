// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminContentV2

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_content_v2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminDeleteContentScreenshotV2Cmd represents the AdminDeleteContentScreenshotV2 command
var AdminDeleteContentScreenshotV2Cmd = &cobra.Command{
	Use:   "adminDeleteContentScreenshotV2",
	Short: "Admin delete content screenshot V2",
	Long:  `Admin delete content screenshot V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentV2Service := &ugc.AdminContentV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		screenshotId, _ := cmd.Flags().GetString("screenshotId")
		input := &admin_content_v2.AdminDeleteContentScreenshotV2Params{
			ContentID:    contentId,
			Namespace:    namespace,
			ScreenshotID: screenshotId,
		}
		errNoContent := adminContentV2Service.AdminDeleteContentScreenshotV2Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteContentScreenshotV2Cmd.Flags().String("contentId", "", "Content id")
	_ = AdminDeleteContentScreenshotV2Cmd.MarkFlagRequired("contentId")
	AdminDeleteContentScreenshotV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteContentScreenshotV2Cmd.MarkFlagRequired("namespace")
	AdminDeleteContentScreenshotV2Cmd.Flags().String("screenshotId", "", "Screenshot id")
	_ = AdminDeleteContentScreenshotV2Cmd.MarkFlagRequired("screenshotId")
}
