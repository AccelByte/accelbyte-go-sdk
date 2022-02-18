// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package matchmaking

import (
	"encoding/json"
	matchmaking_ "github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient/matchmaking"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/matchmaking"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// QuerySessionHandlerCmd represents the QuerySessionHandler command
var QuerySessionHandlerCmd = &cobra.Command{
	Use:   "querySessionHandler",
	Short: "Query session handler",
	Long:  `Query session handler`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchmakingService := &matchmaking.MatchmakingService{
			Client:          factory.NewMatchmakingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		matchID, _ := cmd.Flags().GetString("matchID")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &matchmaking_.QuerySessionHandlerParams{
			MatchID:   matchID,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := matchmakingService.QuerySessionHandler(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			response, errIndent := json.MarshalIndent(ok, "", "    ")
			if errIndent != nil {
				return errIndent
			} else {
				logrus.Infof("Response %s", string(response))
			}
		}
		return nil
	},
}

func init() {
	QuerySessionHandlerCmd.Flags().StringP("matchID", "", "", "Match ID")
	_ = QuerySessionHandlerCmd.MarkFlagRequired("matchID")
	QuerySessionHandlerCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = QuerySessionHandlerCmd.MarkFlagRequired("namespace")
}
