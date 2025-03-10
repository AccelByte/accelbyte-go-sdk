// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package fulfillment

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/fulfillment"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// FulfillRewardsCmd represents the FulfillRewards command
var FulfillRewardsCmd = &cobra.Command{
	Use:   "fulfillRewards",
	Short: "Fulfill rewards",
	Long:  `Fulfill rewards`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fulfillmentService := &platform.FulfillmentService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.RewardsRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &fulfillment.FulfillRewardsParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		errNoContent := fulfillmentService.FulfillRewardsShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	FulfillRewardsCmd.Flags().String("body", "", "Body")
	_ = FulfillRewardsCmd.MarkFlagRequired("body")
	FulfillRewardsCmd.Flags().String("namespace", "", "Namespace")
	_ = FulfillRewardsCmd.MarkFlagRequired("namespace")
	FulfillRewardsCmd.Flags().String("userId", "", "User id")
	_ = FulfillRewardsCmd.MarkFlagRequired("userId")
}
