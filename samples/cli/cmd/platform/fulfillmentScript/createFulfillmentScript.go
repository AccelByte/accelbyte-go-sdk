// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package fulfillmentScript

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/fulfillment_script"
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// createFulfillmentScriptCmd represents the createFulfillmentScript command
var createFulfillmentScriptCmd = &cobra.Command{
	Use:   "createFulfillmentScript",
	Short: "Create fulfillment script",
	Long:  `Create fulfillment script`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fulfillmentScriptService := &platform.FulfillmentScriptService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.FulfillmentScriptCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &fulfillment_script.CreateFulfillmentScriptParams{
			Body: body,
			ID:   id_,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := fulfillmentScriptService.CreateFulfillmentScript(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(createFulfillmentScriptCmd)
	createFulfillmentScriptCmd.Flags().StringP("body", "by", " ", "Body")
	createFulfillmentScriptCmd.Flags().StringP("id", "id", " ", "Id")
	_ = createFulfillmentScriptCmd.MarkFlagRequired("id")
}
