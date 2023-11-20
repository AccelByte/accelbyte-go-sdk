// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicContentLegacy

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content_legacy"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicDeleteContentByShareCodeCmd represents the PublicDeleteContentByShareCode command
var PublicDeleteContentByShareCodeCmd = &cobra.Command{
	Use:   "publicDeleteContentByShareCode",
	Short: "Public delete content by share code",
	Long:  `Public delete content by share code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentLegacyService := &ugc.PublicContentLegacyService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		namespace, _ := cmd.Flags().GetString("namespace")
		shareCode, _ := cmd.Flags().GetString("shareCode")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_content_legacy.PublicDeleteContentByShareCodeParams{
			ChannelID: channelId,
			Namespace: namespace,
			ShareCode: shareCode,
			UserID:    userId,
		}
		errNoContent := publicContentLegacyService.PublicDeleteContentByShareCodeShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicDeleteContentByShareCodeCmd.Flags().String("channelId", "", "Channel id")
	_ = PublicDeleteContentByShareCodeCmd.MarkFlagRequired("channelId")
	PublicDeleteContentByShareCodeCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicDeleteContentByShareCodeCmd.MarkFlagRequired("namespace")
	PublicDeleteContentByShareCodeCmd.Flags().String("shareCode", "", "Share code")
	_ = PublicDeleteContentByShareCodeCmd.MarkFlagRequired("shareCode")
	PublicDeleteContentByShareCodeCmd.Flags().String("userId", "", "User id")
	_ = PublicDeleteContentByShareCodeCmd.MarkFlagRequired("userId")
}
