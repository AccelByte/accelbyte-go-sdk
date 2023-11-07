// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicContentV2

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content_v2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteContentScreenshotV2Cmd represents the DeleteContentScreenshotV2 command
var DeleteContentScreenshotV2Cmd = &cobra.Command{
	Use:   "deleteContentScreenshotV2",
	Short: "Delete content screenshot V2",
	Long:  `Delete content screenshot V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentV2Service := &ugc.PublicContentV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		screenshotId, _ := cmd.Flags().GetString("screenshotId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_content_v2.DeleteContentScreenshotV2Params{
			ContentID:    contentId,
			Namespace:    namespace,
			ScreenshotID: screenshotId,
			UserID:       userId,
		}
		errNoContent := publicContentV2Service.DeleteContentScreenshotV2Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteContentScreenshotV2Cmd.Flags().String("contentId", "", "Content id")
	_ = DeleteContentScreenshotV2Cmd.MarkFlagRequired("contentId")
	DeleteContentScreenshotV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteContentScreenshotV2Cmd.MarkFlagRequired("namespace")
	DeleteContentScreenshotV2Cmd.Flags().String("screenshotId", "", "Screenshot id")
	_ = DeleteContentScreenshotV2Cmd.MarkFlagRequired("screenshotId")
	DeleteContentScreenshotV2Cmd.Flags().String("userId", "", "User id")
	_ = DeleteContentScreenshotV2Cmd.MarkFlagRequired("userId")
}
