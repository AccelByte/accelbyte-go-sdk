// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userVisibility

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclient/user_visibility"
	"github.com/AccelByte/accelbyte-go-sdk/leaderboard-sdk/pkg/leaderboardclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/leaderboard"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// SetUserLeaderboardVisibilityStatusV2Cmd represents the SetUserLeaderboardVisibilityStatusV2 command
var SetUserLeaderboardVisibilityStatusV2Cmd = &cobra.Command{
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
		ok, errOK := userVisibilityService.SetUserLeaderboardVisibilityStatusV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	SetUserLeaderboardVisibilityStatusV2Cmd.Flags().String("body", "", "Body")
	_ = SetUserLeaderboardVisibilityStatusV2Cmd.MarkFlagRequired("body")
	SetUserLeaderboardVisibilityStatusV2Cmd.Flags().String("leaderboardCode", "", "Leaderboard code")
	_ = SetUserLeaderboardVisibilityStatusV2Cmd.MarkFlagRequired("leaderboardCode")
	SetUserLeaderboardVisibilityStatusV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = SetUserLeaderboardVisibilityStatusV2Cmd.MarkFlagRequired("namespace")
	SetUserLeaderboardVisibilityStatusV2Cmd.Flags().String("userId", "", "User id")
	_ = SetUserLeaderboardVisibilityStatusV2Cmd.MarkFlagRequired("userId")
}
