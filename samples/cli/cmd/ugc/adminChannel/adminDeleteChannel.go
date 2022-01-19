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

// adminDeleteChannelCmd represents the adminDeleteChannel command
var adminDeleteChannelCmd = &cobra.Command{
	Use:   "adminDeleteChannel",
	Short: "Admin delete channel",
	Long:  `Admin delete channel`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminChannelService := &ugc.AdminChannelService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &admin_channel.AdminDeleteChannelParams{
			ChannelID: channelId,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := adminChannelService.AdminDeleteChannel(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminDeleteChannelCmd)
	adminDeleteChannelCmd.Flags().StringP("channelId", "c", " ", "Channel id")
	_ = adminDeleteChannelCmd.MarkFlagRequired("channelId")
	adminDeleteChannelCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminDeleteChannelCmd.MarkFlagRequired("namespace")
	adminDeleteChannelCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = adminDeleteChannelCmd.MarkFlagRequired("userId")
}
