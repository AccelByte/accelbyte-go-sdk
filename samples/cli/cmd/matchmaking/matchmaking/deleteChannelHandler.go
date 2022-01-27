// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package matchmaking

import (
	matchmaking_ "github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient/matchmaking"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/matchmaking"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteChannelHandlerCmd represents the DeleteChannelHandler command
var DeleteChannelHandlerCmd = &cobra.Command{
	Use:   "DeleteChannelHandler",
	Short: "Delete channel handler",
	Long:  `Delete channel handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchmakingService := &matchmaking.MatchmakingService{
			Client:          factory.NewMatchmakingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		channel, _ := cmd.Flags().GetString("channel")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &matchmaking_.DeleteChannelHandlerParams{
			Channel:   channel,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := matchmakingService.DeleteChannelHandler(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	DeleteChannelHandlerCmd.Flags().StringP("channel", "cl", " ", "Channel")
	_ = DeleteChannelHandlerCmd.MarkFlagRequired("channel")
	DeleteChannelHandlerCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = DeleteChannelHandlerCmd.MarkFlagRequired("namespace")
}
