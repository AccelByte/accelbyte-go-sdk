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

// GetSessionHistoryDetailedCmd represents the GetSessionHistoryDetailed command
var GetSessionHistoryDetailedCmd = &cobra.Command{
	Use:   "getSessionHistoryDetailed",
	Short: "Get session history detailed",
	Long:  `Get session history detailed`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchmakingService := &matchmaking.MatchmakingService{
			Client:          factory.NewMatchmakingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		matchID, _ := cmd.Flags().GetString("matchID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &matchmaking_.GetSessionHistoryDetailedParams{
			MatchID:   matchID,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := matchmakingService.GetSessionHistoryDetailed(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	GetSessionHistoryDetailedCmd.Flags().StringP("matchID", "", "", "Match ID")
	_ = GetSessionHistoryDetailedCmd.MarkFlagRequired("matchID")
	GetSessionHistoryDetailedCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetSessionHistoryDetailedCmd.MarkFlagRequired("namespace")
}
