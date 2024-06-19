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

// AdminClaimUsersRewardsCmd represents the AdminClaimUsersRewards command
var AdminClaimUsersRewardsCmd = &cobra.Command{
	Use:   "adminClaimUsersRewards",
	Short: "Admin claim users rewards",
	Long:  `Admin claim users rewards`,
	RunE: func(cmd *cobra.Command, args []string) error {
		playerRewardService := &challenge.PlayerRewardService{
			Client:          factory.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []*challengeclientmodels.ModelClaimUsersRewardsRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &player_reward.AdminClaimUsersRewardsParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := playerRewardService.AdminClaimUsersRewardsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminClaimUsersRewardsCmd.Flags().String("body", "", "Body")
	_ = AdminClaimUsersRewardsCmd.MarkFlagRequired("body")
	AdminClaimUsersRewardsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminClaimUsersRewardsCmd.MarkFlagRequired("namespace")
}
