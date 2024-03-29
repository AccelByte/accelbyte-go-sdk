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

// AdminDeleteContentCmd represents the AdminDeleteContent command
var AdminDeleteContentCmd = &cobra.Command{
	Use:   "adminDeleteContent",
	Short: "Admin delete content",
	Long:  `Admin delete content`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentService := &ugc.AdminContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		contentId, _ := cmd.Flags().GetString("contentId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_content.AdminDeleteContentParams{
			ChannelID: channelId,
			ContentID: contentId,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := adminContentService.AdminDeleteContentShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteContentCmd.Flags().String("channelId", "", "Channel id")
	_ = AdminDeleteContentCmd.MarkFlagRequired("channelId")
	AdminDeleteContentCmd.Flags().String("contentId", "", "Content id")
	_ = AdminDeleteContentCmd.MarkFlagRequired("contentId")
	AdminDeleteContentCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteContentCmd.MarkFlagRequired("namespace")
	AdminDeleteContentCmd.Flags().String("userId", "", "User id")
	_ = AdminDeleteContentCmd.MarkFlagRequired("userId")
}
