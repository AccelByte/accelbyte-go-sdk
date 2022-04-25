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

// BulkGetSessionsCmd represents the BulkGetSessions command
var BulkGetSessionsCmd = &cobra.Command{
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
		ok, err := matchmakingService.BulkGetSessionsShort(input, nil)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	BulkGetSessionsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = BulkGetSessionsCmd.MarkFlagRequired("namespace")
	BulkGetSessionsCmd.Flags().StringP("matchIDs", "", "", "Match I ds")
}
