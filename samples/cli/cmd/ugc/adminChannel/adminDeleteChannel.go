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

// AdminDeleteChannelCmd represents the AdminDeleteChannel command
var AdminDeleteChannelCmd = &cobra.Command{
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
		errInput := adminChannelService.AdminDeleteChannelShort(input, nil)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminDeleteChannelCmd.Flags().StringP("channelId", "", "", "Channel id")
	_ = AdminDeleteChannelCmd.MarkFlagRequired("channelId")
	AdminDeleteChannelCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminDeleteChannelCmd.MarkFlagRequired("namespace")
	AdminDeleteChannelCmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminDeleteChannelCmd.MarkFlagRequired("userId")
}
