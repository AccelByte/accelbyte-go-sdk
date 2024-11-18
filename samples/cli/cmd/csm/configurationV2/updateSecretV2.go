// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configurationV2

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/configuration_v2"
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/csm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateSecretV2Cmd represents the UpdateSecretV2 command
var UpdateSecretV2Cmd = &cobra.Command{
	Use:   "updateSecretV2",
	Short: "Update secret V2",
	Long:  `Update secret V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationV2Service := &csm.ConfigurationV2Service{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.ApimodelUpdateConfigurationV2Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		app, _ := cmd.Flags().GetString("app")
		configId, _ := cmd.Flags().GetString("configId")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration_v2.UpdateSecretV2Params{
			Body:      body,
			App:       app,
			ConfigID:  configId,
			Namespace: namespace,
		}
		ok, errOK := configurationV2Service.UpdateSecretV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	UpdateSecretV2Cmd.Flags().String("body", "", "Body")
	_ = UpdateSecretV2Cmd.MarkFlagRequired("body")
	UpdateSecretV2Cmd.Flags().String("app", "", "App")
	_ = UpdateSecretV2Cmd.MarkFlagRequired("app")
	UpdateSecretV2Cmd.Flags().String("configId", "", "Config id")
	_ = UpdateSecretV2Cmd.MarkFlagRequired("configId")
	UpdateSecretV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateSecretV2Cmd.MarkFlagRequired("namespace")
}
