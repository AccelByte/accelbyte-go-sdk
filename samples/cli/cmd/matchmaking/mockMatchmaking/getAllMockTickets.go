// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package mockMatchmaking

import (
	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient/mock_matchmaking"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/matchmaking"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetAllMockTicketsCmd represents the GetAllMockTickets command
var GetAllMockTicketsCmd = &cobra.Command{
	Use:   "getAllMockTickets",
	Short: "Get all mock tickets",
	Long:  `Get all mock tickets`,
	RunE: func(cmd *cobra.Command, args []string) error {
		mockMatchmakingService := &matchmaking.MockMatchmakingService{
			Client:          factory.NewMatchmakingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		channelName, _ := cmd.Flags().GetString("channelName")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &mock_matchmaking.GetAllMockTicketsParams{
			ChannelName: channelName,
			Namespace:   namespace,
		}
		ok, errOK := mockMatchmakingService.GetAllMockTicketsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetAllMockTicketsCmd.Flags().String("channelName", "", "Channel name")
	_ = GetAllMockTicketsCmd.MarkFlagRequired("channelName")
	GetAllMockTicketsCmd.Flags().String("namespace", "", "Namespace")
	_ = GetAllMockTicketsCmd.MarkFlagRequired("namespace")
}
