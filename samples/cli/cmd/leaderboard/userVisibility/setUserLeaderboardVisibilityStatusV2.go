// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/user_visibility"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// setUserLeaderboardVisibilityStatusV2Cmd represents the setUserLeaderboardVisibilityStatusV2 command
var setUserLeaderboardVisibilityStatusV2Cmd = &cobra.Command{
	Use:   "setUserLeaderboardVisibilityStatusV2",
	Short: "Set user leaderboard visibility status V2",
	Long:  `Set user leaderboard visibility status V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userVisibilityService := &leaderboard.UserVisibilityService{
			Client:          factory.NewLeaderboardClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *leaderboardclientmodels.ModelsSetUserVisibilityRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		leaderboardCode, _ := cmd.Flags().GetString("leaderboardCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &user_visibility.SetUserLeaderboardVisibilityStatusV2Params{
			Body:            body,
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			UserID:          userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userVisibilityService.SetUserLeaderboardVisibilityStatusV2(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(setUserLeaderboardVisibilityStatusV2Cmd)
	setUserLeaderboardVisibilityStatusV2Cmd.Flags().StringP("body", "b", " ", "Body")
	_ = setUserLeaderboardVisibilityStatusV2Cmd.MarkFlagRequired("body")
	setUserLeaderboardVisibilityStatusV2Cmd.Flags().StringP("leaderboardCode", "l", " ", "Leaderboard code")
	_ = setUserLeaderboardVisibilityStatusV2Cmd.MarkFlagRequired("leaderboardCode")
	setUserLeaderboardVisibilityStatusV2Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = setUserLeaderboardVisibilityStatusV2Cmd.MarkFlagRequired("namespace")
	setUserLeaderboardVisibilityStatusV2Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = setUserLeaderboardVisibilityStatusV2Cmd.MarkFlagRequired("userId")
}
