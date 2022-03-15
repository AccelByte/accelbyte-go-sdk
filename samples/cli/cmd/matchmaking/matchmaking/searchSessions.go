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

// SearchSessionsCmd represents the SearchSessions command
var SearchSessionsCmd = &cobra.Command{
	Use:   "searchSessions",
	Short: "Search sessions",
	Long:  `Search sessions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchmakingService := &matchmaking.MatchmakingService{
			Client:          factory.NewMatchmakingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		channel, _ := cmd.Flags().GetString("channel")
		deleted, _ := cmd.Flags().GetBool("deleted")
		matchID, _ := cmd.Flags().GetString("matchID")
		partyID, _ := cmd.Flags().GetString("partyID")
		userID, _ := cmd.Flags().GetString("userID")
		input := &matchmaking_.SearchSessionsParams{
			Namespace: namespace,
			Channel:   &channel,
			Deleted:   &deleted,
			MatchID:   &matchID,
			PartyID:   &partyID,
			UserID:    &userID,
			Limit:     limit,
			Offset:    offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := matchmakingService.SearchSessions(input)
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
	SearchSessionsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = SearchSessionsCmd.MarkFlagRequired("namespace")
	SearchSessionsCmd.Flags().StringP("channel", "", "", "Channel")
	SearchSessionsCmd.Flags().BoolP("deleted", "", false, "Deleted")
	SearchSessionsCmd.Flags().StringP("matchID", "", "", "Match ID")
	SearchSessionsCmd.Flags().StringP("partyID", "", "", "Party ID")
	SearchSessionsCmd.Flags().StringP("userID", "", "", "User ID")
	SearchSessionsCmd.Flags().Int64P("limit", "", 20, "Limit")
	_ = SearchSessionsCmd.MarkFlagRequired("limit")
	SearchSessionsCmd.Flags().Int64P("offset", "", 0, "Offset")
	_ = SearchSessionsCmd.MarkFlagRequired("offset")
}
