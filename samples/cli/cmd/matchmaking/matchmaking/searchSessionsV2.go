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
		ok, errOK := matchmakingService.SearchSessionsV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	SearchSessionsV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = SearchSessionsV2Cmd.MarkFlagRequired("namespace")
	SearchSessionsV2Cmd.Flags().String("channel", "", "Channel")
	SearchSessionsV2Cmd.Flags().Bool("deleted", false, "Deleted")
	SearchSessionsV2Cmd.Flags().String("matchID", "", "Match ID")
	SearchSessionsV2Cmd.Flags().String("partyID", "", "Party ID")
	SearchSessionsV2Cmd.Flags().String("userID", "", "User ID")
	SearchSessionsV2Cmd.Flags().Int64("limit", 20, "Limit")
	_ = SearchSessionsV2Cmd.MarkFlagRequired("limit")
	SearchSessionsV2Cmd.Flags().Int64("offset", 0, "Offset")
	_ = SearchSessionsV2Cmd.MarkFlagRequired("offset")
}
