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

// RedeemCodeCmd represents the RedeemCode command
var RedeemCodeCmd = &cobra.Command{
	Use:   "redeemCode",
	Short: "Redeem code",
	Long:  `Redeem code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fulfillmentService := &platform.FulfillmentService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.FulfillCodeRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &fulfillment.RedeemCodeParams{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := fulfillmentService.RedeemCodeShort(input)
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
	RedeemCodeCmd.Flags().StringP("body", "", "", "Body")
	RedeemCodeCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = RedeemCodeCmd.MarkFlagRequired("namespace")
	RedeemCodeCmd.Flags().StringP("userId", "", "", "User id")
	_ = RedeemCodeCmd.MarkFlagRequired("userId")
}
