// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package matchmaking

import (
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"

	matchmaking_ "github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient/matchmaking"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/matchmaking"
	"github.com/AccelByte/sample-apps/pkg/repository"
)

// SearchSessionsV2Cmd represents the SearchSessionsV2 command
var SearchSessionsV2Cmd = &cobra.Command{
	Use:   "searchSessionsV2",
	Short: "Search sessions V2",
	Long:  `Search sessions V2`,
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
		input := &matchmaking_.SearchSessionsV2Params{
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
		ok, err := matchmakingService.SearchSessionsV2(input)
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
	SearchSessionsV2Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = SearchSessionsV2Cmd.MarkFlagRequired("namespace")
	SearchSessionsV2Cmd.Flags().StringP("channel", "", "", "Channel")
	SearchSessionsV2Cmd.Flags().BoolP("deleted", "", false, "Deleted")
	SearchSessionsV2Cmd.Flags().StringP("matchID", "", "", "Match ID")
	SearchSessionsV2Cmd.Flags().StringP("partyID", "", "", "Party ID")
	SearchSessionsV2Cmd.Flags().StringP("userID", "", "", "User ID")
	SearchSessionsV2Cmd.Flags().Int64P("limit", "", 20, "Limit")
	_ = SearchSessionsV2Cmd.MarkFlagRequired("limit")
	SearchSessionsV2Cmd.Flags().Int64P("offset", "", 0, "Offset")
	_ = SearchSessionsV2Cmd.MarkFlagRequired("offset")
}
