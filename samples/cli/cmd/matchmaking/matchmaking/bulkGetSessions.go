// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package matchmaking

import (
	matchmaking_ "github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient/matchmaking"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/matchmaking"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// bulkGetSessionsCmd represents the bulkGetSessions command
var bulkGetSessionsCmd = &cobra.Command{
	Use:   "bulkGetSessions",
	Short: "Bulk get sessions",
	Long:  `Bulk get sessions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchmakingService := &matchmaking.MatchmakingService{
			Client:          factory.NewMatchmakingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		matchIDs, _ := cmd.Flags().GetString("matchIDs")
		input := &matchmaking_.BulkGetSessionsParams{
			Namespace: namespace,
			MatchIDs:  &matchIDs,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := matchmakingService.BulkGetSessions(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(bulkGetSessionsCmd)
	bulkGetSessionsCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = bulkGetSessionsCmd.MarkFlagRequired("namespace")
	bulkGetSessionsCmd.Flags().StringP("matchIDs", "ms", " ", "Match I ds")
}
