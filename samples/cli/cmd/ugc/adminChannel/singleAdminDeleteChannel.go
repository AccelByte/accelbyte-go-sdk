// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_channel"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// singleAdminDeleteChannelCmd represents the singleAdminDeleteChannel command
var singleAdminDeleteChannelCmd = &cobra.Command{
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
	cmd.RootCmd.AddCommand(singleAdminDeleteChannelCmd)
	singleAdminDeleteChannelCmd.Flags().StringP("channelId", "c", " ", "Channel id")
	_ = singleAdminDeleteChannelCmd.MarkFlagRequired("channelId")
	singleAdminDeleteChannelCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = singleAdminDeleteChannelCmd.MarkFlagRequired("namespace")
}