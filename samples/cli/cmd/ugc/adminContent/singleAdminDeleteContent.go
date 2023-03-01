// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminContent

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_content"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// SingleAdminDeleteContentCmd represents the SingleAdminDeleteContent command
var SingleAdminDeleteContentCmd = &cobra.Command{
	Use:   "singleAdminDeleteContent",
	Short: "Single admin delete content",
	Long:  `Single admin delete content`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentService := &ugc.AdminContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_content.SingleAdminDeleteContentParams{
			ChannelID: channelId,
			ContentID: contentId,
			Namespace: namespace,
		}
		errNoContent := adminContentService.SingleAdminDeleteContentShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	SingleAdminDeleteContentCmd.Flags().String("channelId", "", "Channel id")
	_ = SingleAdminDeleteContentCmd.MarkFlagRequired("channelId")
	SingleAdminDeleteContentCmd.Flags().String("contentId", "", "Content id")
	_ = SingleAdminDeleteContentCmd.MarkFlagRequired("contentId")
	SingleAdminDeleteContentCmd.Flags().String("namespace", "", "Namespace")
	_ = SingleAdminDeleteContentCmd.MarkFlagRequired("namespace")
}
