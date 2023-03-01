// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package matchmaking

import (
	matchmaking_ "github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient/matchmaking"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/matchmaking"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetAllChannelsHandlerCmd represents the GetAllChannelsHandler command
var GetAllChannelsHandlerCmd = &cobra.Command{
	Use:   "getAllChannelsHandler",
	Short: "Get all channels handler",
	Long:  `Get all channels handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchmakingService := &matchmaking.MatchmakingService{
			Client:          factory.NewMatchmakingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &matchmaking_.GetAllChannelsHandlerParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := matchmakingService.GetAllChannelsHandlerShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetAllChannelsHandlerCmd.Flags().String("namespace", "", "Namespace")
	_ = GetAllChannelsHandlerCmd.MarkFlagRequired("namespace")
	GetAllChannelsHandlerCmd.Flags().Int64("limit", 20, "Limit")
	GetAllChannelsHandlerCmd.Flags().Int64("offset", 0, "Offset")
}
