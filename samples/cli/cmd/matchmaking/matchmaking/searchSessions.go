// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	matchmaking_ "github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclient/matchmaking"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/matchmaking"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// searchSessionsCmd represents the searchSessions command
var searchSessionsCmd = &cobra.Command{
	Use:   "searchSessions",
	Short: "Search sessions",
	Long:  `Search sessions`,
	RunE: func(cmd *cobra.Command, args []string) error {
		matchmakingService := &matchmaking.MatchmakingService{
			Client:          factory.NewMatchmakingClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetFloat64("limit")
		offset, _ := cmd.Flags().GetFloat64("offset")
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
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(searchSessionsCmd)
	searchSessionsCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = searchSessionsCmd.MarkFlagRequired("namespace")
	searchSessionsCmd.Flags().StringP("channel", "c", " ", "Channel")
	searchSessionsCmd.Flags().BoolP("deleted", "d", false, "Deleted")
	searchSessionsCmd.Flags().StringP("matchID", "m", " ", "Match ID")
	searchSessionsCmd.Flags().StringP("partyID", "p", " ", "Party ID")
	searchSessionsCmd.Flags().StringP("userID", "u", " ", "User ID")
	searchSessionsCmd.Flags().Float64P("limit", "l", 20, "Limit")
	_ = searchSessionsCmd.MarkFlagRequired("limit")
	searchSessionsCmd.Flags().Float64P("offset", "o", 0, "Offset")
	_ = searchSessionsCmd.MarkFlagRequired("offset")
}
