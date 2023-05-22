// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userVisibilityV3

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/user_visibility_v3"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// SetUserLeaderboardVisibilityV3Cmd represents the SetUserLeaderboardVisibilityV3 command
var SetUserLeaderboardVisibilityV3Cmd = &cobra.Command{
	Use:   "setUserLeaderboardVisibilityV3",
	Short: "Set user leaderboard visibility V3",
	Long:  `Set user leaderboard visibility V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userVisibilityV3Service := &leaderboard.UserVisibilityV3Service{
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
		input := &user_visibility_v3.SetUserLeaderboardVisibilityV3Params{
			Body:            body,
			LeaderboardCode: leaderboardCode,
			Namespace:       namespace,
			UserID:          userId,
		}
		ok, errOK := userVisibilityV3Service.SetUserLeaderboardVisibilityV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	SetUserLeaderboardVisibilityV3Cmd.Flags().String("body", "", "Body")
	_ = SetUserLeaderboardVisibilityV3Cmd.MarkFlagRequired("body")
	SetUserLeaderboardVisibilityV3Cmd.Flags().String("leaderboardCode", "", "Leaderboard code")
	_ = SetUserLeaderboardVisibilityV3Cmd.MarkFlagRequired("leaderboardCode")
	SetUserLeaderboardVisibilityV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = SetUserLeaderboardVisibilityV3Cmd.MarkFlagRequired("namespace")
	SetUserLeaderboardVisibilityV3Cmd.Flags().String("userId", "", "User id")
	_ = SetUserLeaderboardVisibilityV3Cmd.MarkFlagRequired("userId")
}
