// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/fulfillment_script"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// deleteFulfillmentScriptCmd represents the deleteFulfillmentScript command
var deleteFulfillmentScriptCmd = &cobra.Command{
	Use:   "deleteFulfillmentScript",
	Short: "Delete fulfillment script",
	Long:  `Delete fulfillment script`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fulfillmentScriptService := &platform.FulfillmentScriptService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		id_, _ := cmd.Flags().GetString("id")
		input := &fulfillment_script.DeleteFulfillmentScriptParams{
			ID: id_,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := fulfillmentScriptService.DeleteFulfillmentScript(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(deleteFulfillmentScriptCmd)
	deleteFulfillmentScriptCmd.Flags().StringP("id", "i", " ", "Id")
	_ = deleteFulfillmentScriptCmd.MarkFlagRequired("id")
}
