// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminChannel

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_channel"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// SingleAdminDeleteChannelCmd represents the SingleAdminDeleteChannel command
var SingleAdminDeleteChannelCmd = &cobra.Command{
	Use:   "singleAdminDeleteChannel",
	Short: "Single admin delete channel",
	Long:  `Single admin delete channel`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminChannelService := &ugc.AdminChannelService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_channel.SingleAdminDeleteChannelParams{
			ChannelID: channelId,
			Namespace: namespace,
		}
		errNoContent := adminChannelService.SingleAdminDeleteChannelShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	SingleAdminDeleteChannelCmd.Flags().String("channelId", "", "Channel id")
	_ = SingleAdminDeleteChannelCmd.MarkFlagRequired("channelId")
	SingleAdminDeleteChannelCmd.Flags().String("namespace", "", "Namespace")
	_ = SingleAdminDeleteChannelCmd.MarkFlagRequired("namespace")
}
