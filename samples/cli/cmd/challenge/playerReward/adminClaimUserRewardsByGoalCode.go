// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package playerReward

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/challenge-sdk/pkg/challengeclient/player_reward"
	"github.com/AccelByte/accelbyte-go-sdk/challenge-sdk/pkg/challengeclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/challenge"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminClaimUserRewardsByGoalCodeCmd represents the AdminClaimUserRewardsByGoalCode command
var AdminClaimUserRewardsByGoalCodeCmd = &cobra.Command{
	Use:   "adminClaimUserRewardsByGoalCode",
	Short: "Admin claim user rewards by goal code",
	Long:  `Admin claim user rewards by goal code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		playerRewardService := &challenge.PlayerRewardService{
			Client:          factory.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *challengeclientmodels.ModelClaimUserRewardsByGoalCodeRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		challengeCode, _ := cmd.Flags().GetString("challengeCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &player_reward.AdminClaimUserRewardsByGoalCodeParams{
			Body:          body,
			ChallengeCode: challengeCode,
			Namespace:     namespace,
			UserID:        userId,
		}
		ok, errOK := playerRewardService.AdminClaimUserRewardsByGoalCodeShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminClaimUserRewardsByGoalCodeCmd.Flags().String("body", "", "Body")
	_ = AdminClaimUserRewardsByGoalCodeCmd.MarkFlagRequired("body")
	AdminClaimUserRewardsByGoalCodeCmd.Flags().String("challengeCode", "", "Challenge code")
	_ = AdminClaimUserRewardsByGoalCodeCmd.MarkFlagRequired("challengeCode")
	AdminClaimUserRewardsByGoalCodeCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminClaimUserRewardsByGoalCodeCmd.MarkFlagRequired("namespace")
	AdminClaimUserRewardsByGoalCodeCmd.Flags().String("userId", "", "User id")
	_ = AdminClaimUserRewardsByGoalCodeCmd.MarkFlagRequired("userId")
}
