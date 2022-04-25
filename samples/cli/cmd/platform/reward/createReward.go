// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package reward

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/reward"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreateRewardCmd represents the CreateReward command
var CreateRewardCmd = &cobra.Command{
	Use:   "createReward",
	Short: "Create reward",
	Long:  `Create reward`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rewardService := &platform.RewardService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.RewardCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &reward.CreateRewardParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, err := rewardService.CreateRewardShort(input, nil)
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
	CreateRewardCmd.Flags().StringP("body", "", "", "Body")
	CreateRewardCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = CreateRewardCmd.MarkFlagRequired("namespace")
}
