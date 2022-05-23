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
		ok, err := matchmakingService.SearchSessionsShort(input)
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
	SearchSessionsCmd.Flags().String("namespace", "", "Namespace")
	_ = SearchSessionsCmd.MarkFlagRequired("namespace")
	SearchSessionsCmd.Flags().String("channel", "", "Channel")
	SearchSessionsCmd.Flags().Bool("deleted", false, "Deleted")
	SearchSessionsCmd.Flags().String("matchID", "", "Match ID")
	SearchSessionsCmd.Flags().String("partyID", "", "Party ID")
	SearchSessionsCmd.Flags().String("userID", "", "User ID")
	SearchSessionsCmd.Flags().Int64("limit", 20, "Limit")
	_ = SearchSessionsCmd.MarkFlagRequired("limit")
	SearchSessionsCmd.Flags().Int64("offset", 0, "Offset")
	_ = SearchSessionsCmd.MarkFlagRequired("offset")
}
