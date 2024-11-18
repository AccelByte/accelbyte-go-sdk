// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configuration

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/configuration"
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateVariableV1Cmd represents the UpdateVariableV1 command
var UpdateVariableV1Cmd = &cobra.Command{
	Use:   "updateVariableV1",
	Short: "Update variable V1",
	Long:  `Update variable V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationService := &csm.ConfigurationService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.GeneratedUpdateConfigurationV1Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		app, _ := cmd.Flags().GetString("app")
		configId, _ := cmd.Flags().GetString("configId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration.UpdateVariableV1Params{
			Body:      body,
			App:       app,
			ConfigID:  configId,
			Namespace: namespace,
		}
		ok, errOK := configurationService.UpdateVariableV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateVariableV1Cmd.Flags().String("body", "", "Body")
	_ = UpdateVariableV1Cmd.MarkFlagRequired("body")
	UpdateVariableV1Cmd.Flags().String("app", "", "App")
	_ = UpdateVariableV1Cmd.MarkFlagRequired("app")
	UpdateVariableV1Cmd.Flags().String("configId", "", "Config id")
	_ = UpdateVariableV1Cmd.MarkFlagRequired("configId")
	UpdateVariableV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateVariableV1Cmd.MarkFlagRequired("namespace")
}
