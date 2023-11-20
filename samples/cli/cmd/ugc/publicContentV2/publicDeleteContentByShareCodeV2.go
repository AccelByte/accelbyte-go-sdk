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

// PublicDeleteContentByShareCodeV2Cmd represents the PublicDeleteContentByShareCodeV2 command
var PublicDeleteContentByShareCodeV2Cmd = &cobra.Command{
	Use:   "publicDeleteContentByShareCodeV2",
	Short: "Public delete content by share code V2",
	Long:  `Public delete content by share code V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicContentV2Service := &ugc.PublicContentV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		namespace, _ := cmd.Flags().GetString("namespace")
		shareCode, _ := cmd.Flags().GetString("shareCode")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_content_v2.PublicDeleteContentByShareCodeV2Params{
			ChannelID: channelId,
			Namespace: namespace,
			ShareCode: shareCode,
			UserID:    userId,
		}
		errNoContent := publicContentV2Service.PublicDeleteContentByShareCodeV2Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicDeleteContentByShareCodeV2Cmd.Flags().String("channelId", "", "Channel id")
	_ = PublicDeleteContentByShareCodeV2Cmd.MarkFlagRequired("channelId")
	PublicDeleteContentByShareCodeV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicDeleteContentByShareCodeV2Cmd.MarkFlagRequired("namespace")
	PublicDeleteContentByShareCodeV2Cmd.Flags().String("shareCode", "", "Share code")
	_ = PublicDeleteContentByShareCodeV2Cmd.MarkFlagRequired("shareCode")
	PublicDeleteContentByShareCodeV2Cmd.Flags().String("userId", "", "User id")
	_ = PublicDeleteContentByShareCodeV2Cmd.MarkFlagRequired("userId")
}
