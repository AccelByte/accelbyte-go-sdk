// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package fulfillmentScript

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/fulfillment_script"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateFulfillmentScriptCmd represents the UpdateFulfillmentScript command
var UpdateFulfillmentScriptCmd = &cobra.Command{
	Use:   "updateFulfillmentScript",
	Short: "Update fulfillment script",
	Long:  `Update fulfillment script`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fulfillmentScriptService := &platform.FulfillmentScriptService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.FulfillmentScriptUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &fulfillment_script.UpdateFulfillmentScriptParams{
			Body: body,
			ID:   id_,
		}
		ok, errOK := fulfillmentScriptService.UpdateFulfillmentScriptShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateFulfillmentScriptCmd.Flags().String("body", "", "Body")
	UpdateFulfillmentScriptCmd.Flags().String("id", "", "Id")
	_ = UpdateFulfillmentScriptCmd.MarkFlagRequired("id")
}
