// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package publicChannel

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_channel"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteChannelCmd represents the DeleteChannel command
var DeleteChannelCmd = &cobra.Command{
	Use:   "deleteChannel",
	Short: "Delete channel",
	Long:  `Delete channel`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicChannelService := &ugc.PublicChannelService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		channelId, _ := cmd.Flags().GetString("channelId")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &public_channel.DeleteChannelParams{
			ChannelID: channelId,
			Namespace: namespace,
			UserID:    userId,
		}
		errInput := publicChannelService.DeleteChannelShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DeleteChannelCmd.Flags().String("channelId", "", "Channel id")
	_ = DeleteChannelCmd.MarkFlagRequired("channelId")
	DeleteChannelCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteChannelCmd.MarkFlagRequired("namespace")
	DeleteChannelCmd.Flags().String("userId", "", "User id")
	_ = DeleteChannelCmd.MarkFlagRequired("userId")
}
