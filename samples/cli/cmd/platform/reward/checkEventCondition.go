// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package reward

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/reward"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// checkEventConditionCmd represents the checkEventCondition command
var checkEventConditionCmd = &cobra.Command{
	Use:   "checkEventCondition",
	Short: "Check event condition",
	Long:  `Check event condition`,
	RunE: func(cmd *cobra.Command, args []string) error {
		rewardService := &platform.RewardService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		rewardId, _ := cmd.Flags().GetString("rewardId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.EventPayload
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &reward.CheckEventConditionParams{
			Body:      body,
			Namespace: namespace,
			RewardID:  rewardId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := rewardService.CheckEventCondition(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(checkEventConditionCmd)
	checkEventConditionCmd.Flags().StringP("body", "by", " ", "Body")
	checkEventConditionCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = checkEventConditionCmd.MarkFlagRequired("namespace")
	checkEventConditionCmd.Flags().StringP("rewardId", "rd", " ", "Reward id")
	_ = checkEventConditionCmd.MarkFlagRequired("rewardId")
}
