// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package reward

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclient/reward"
	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/seasonpass"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicClaimUserRewardCmd represents the PublicClaimUserReward command
var PublicClaimUserRewardCmd = &cobra.Command{
	Use:   "publicClaimUserReward",
	Short: "Public claim user reward",
	Long:  `Public claim user reward`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rewardService := &seasonpass.RewardService{
			Client:          factory.NewSeasonpassClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *seasonpassclientmodels.UserRewardClaim
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &reward.PublicClaimUserRewardParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := rewardService.PublicClaimUserRewardShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicClaimUserRewardCmd.Flags().String("body", "", "Body")
	PublicClaimUserRewardCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicClaimUserRewardCmd.MarkFlagRequired("namespace")
	PublicClaimUserRewardCmd.Flags().String("userId", "", "User id")
	_ = PublicClaimUserRewardCmd.MarkFlagRequired("userId")
}
