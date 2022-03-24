// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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

// SetUserVisibilityStatusV2Cmd represents the SetUserVisibilityStatusV2 command
var SetUserVisibilityStatusV2Cmd = &cobra.Command{
	Use:   "setUserVisibilityStatusV2",
	Short: "Set user visibility status V2",
	Long:  `Set user visibility status V2`,
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
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &user_visibility.SetUserVisibilityStatusV2Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := userVisibilityService.SetUserVisibilityStatusV2Short(input)
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
	SetUserVisibilityStatusV2Cmd.Flags().StringP("body", "", "", "Body")
	_ = SetUserVisibilityStatusV2Cmd.MarkFlagRequired("body")
	SetUserVisibilityStatusV2Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = SetUserVisibilityStatusV2Cmd.MarkFlagRequired("namespace")
	SetUserVisibilityStatusV2Cmd.Flags().StringP("userId", "", "", "User id")
	_ = SetUserVisibilityStatusV2Cmd.MarkFlagRequired("userId")
}
