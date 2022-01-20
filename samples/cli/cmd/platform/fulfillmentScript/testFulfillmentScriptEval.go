// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

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

// testFulfillmentScriptEvalCmd represents the testFulfillmentScriptEval command
var testFulfillmentScriptEvalCmd = &cobra.Command{
	Use:   "testFulfillmentScriptEval",
	Short: "Test fulfillment script eval",
	Long:  `Test fulfillment script eval`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fulfillmentScriptService := &platform.FulfillmentScriptService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *platformclientmodels.FulfillmentScriptEvalTestRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &fulfillment_script.TestFulfillmentScriptEvalParams{
			Body: body,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := fulfillmentScriptService.TestFulfillmentScriptEval(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(testFulfillmentScriptEvalCmd)
	testFulfillmentScriptEvalCmd.Flags().StringP("body", "b", " ", "Body")
}