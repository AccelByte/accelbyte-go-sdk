// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package fulfillmentScript

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/fulfillment_script"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// listFulfillmentScriptsCmd represents the listFulfillmentScripts command
var listFulfillmentScriptsCmd = &cobra.Command{
	Use:   "listFulfillmentScripts",
	Short: "List fulfillment scripts",
	Long:  `List fulfillment scripts`,
	RunE: func(cmd *cobra.Command, args []string) error {
		fulfillmentScriptService := &platform.FulfillmentScriptService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &fulfillment_script.ListFulfillmentScriptsParams{}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := fulfillmentScriptService.ListFulfillmentScripts(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(listFulfillmentScriptsCmd)
}
