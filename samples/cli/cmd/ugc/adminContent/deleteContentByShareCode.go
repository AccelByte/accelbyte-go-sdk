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

// DeleteContentByShareCodeCmd represents the DeleteContentByShareCode command
var DeleteContentByShareCodeCmd = &cobra.Command{
	Use:   "deleteContentByShareCode",
	Short: "Delete content by share code",
	Long:  `Delete content by share code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentService := &ugc.AdminContentService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		namespace, _ := cmd.Flags().GetString("namespace")
		shareCode, _ := cmd.Flags().GetString("shareCode")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_content.DeleteContentByShareCodeParams{
			ChannelID: channelId,
			Namespace: namespace,
			ShareCode: shareCode,
			UserID:    userId,
		}
		errNoContent := adminContentService.DeleteContentByShareCodeShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteContentByShareCodeCmd.Flags().String("channelId", "", "Channel id")
	_ = DeleteContentByShareCodeCmd.MarkFlagRequired("channelId")
	DeleteContentByShareCodeCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteContentByShareCodeCmd.MarkFlagRequired("namespace")
	DeleteContentByShareCodeCmd.Flags().String("shareCode", "", "Share code")
	_ = DeleteContentByShareCodeCmd.MarkFlagRequired("shareCode")
	DeleteContentByShareCodeCmd.Flags().String("userId", "", "User id")
	_ = DeleteContentByShareCodeCmd.MarkFlagRequired("userId")
}
