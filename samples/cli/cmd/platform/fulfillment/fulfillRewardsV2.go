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

// FulfillRewardsV2Cmd represents the FulfillRewardsV2 command
var FulfillRewardsV2Cmd = &cobra.Command{
	Use:   "fulfillRewardsV2",
	Short: "Fulfill rewards V2",
	Long:  `Fulfill rewards V2`,
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
		input := &fulfillment.FulfillRewardsV2Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := fulfillmentService.FulfillRewardsV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	FulfillRewardsV2Cmd.Flags().String("body", "", "Body")
	_ = FulfillRewardsV2Cmd.MarkFlagRequired("body")
	FulfillRewardsV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = FulfillRewardsV2Cmd.MarkFlagRequired("namespace")
	FulfillRewardsV2Cmd.Flags().String("userId", "", "User id")
	_ = FulfillRewardsV2Cmd.MarkFlagRequired("userId")
}
