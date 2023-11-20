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

// AdminDeleteContentByShareCodeV2Cmd represents the AdminDeleteContentByShareCodeV2 command
var AdminDeleteContentByShareCodeV2Cmd = &cobra.Command{
	Use:   "adminDeleteContentByShareCodeV2",
	Short: "Admin delete content by share code V2",
	Long:  `Admin delete content by share code V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminContentV2Service := &ugc.AdminContentV2Service{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		namespace, _ := cmd.Flags().GetString("namespace")
		shareCode, _ := cmd.Flags().GetString("shareCode")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_content_v2.AdminDeleteContentByShareCodeV2Params{
			ChannelID: channelId,
			Namespace: namespace,
			ShareCode: shareCode,
			UserID:    userId,
		}
		errNoContent := adminContentV2Service.AdminDeleteContentByShareCodeV2Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminDeleteContentByShareCodeV2Cmd.Flags().String("channelId", "", "Channel id")
	_ = AdminDeleteContentByShareCodeV2Cmd.MarkFlagRequired("channelId")
	AdminDeleteContentByShareCodeV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteContentByShareCodeV2Cmd.MarkFlagRequired("namespace")
	AdminDeleteContentByShareCodeV2Cmd.Flags().String("shareCode", "", "Share code")
	_ = AdminDeleteContentByShareCodeV2Cmd.MarkFlagRequired("shareCode")
	AdminDeleteContentByShareCodeV2Cmd.Flags().String("userId", "", "User id")
	_ = AdminDeleteContentByShareCodeV2Cmd.MarkFlagRequired("userId")
}
