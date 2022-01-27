// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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
	Use:   "SingleAdminDeleteChannel",
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := adminChannelService.SingleAdminDeleteChannel(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	SingleAdminDeleteChannelCmd.Flags().StringP("channelId", "cd", " ", "Channel id")
	_ = SingleAdminDeleteChannelCmd.MarkFlagRequired("channelId")
	SingleAdminDeleteChannelCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = SingleAdminDeleteChannelCmd.MarkFlagRequired("namespace")
}
