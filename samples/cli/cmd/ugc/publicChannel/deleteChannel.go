// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package publicChannel

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_channel"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteChannelCmd represents the deleteChannel command
var deleteChannelCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := publicChannelService.DeleteChannel(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteChannelCmd)
	deleteChannelCmd.Flags().StringP("channelId", "cd", " ", "Channel id")
	_ = deleteChannelCmd.MarkFlagRequired("channelId")
	deleteChannelCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = deleteChannelCmd.MarkFlagRequired("namespace")
	deleteChannelCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = deleteChannelCmd.MarkFlagRequired("userId")
}
