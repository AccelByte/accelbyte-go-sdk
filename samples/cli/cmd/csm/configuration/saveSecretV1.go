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

// SaveSecretV1Cmd represents the SaveSecretV1 command
var SaveSecretV1Cmd = &cobra.Command{
	Use:   "saveSecretV1",
	Short: "Save secret V1",
	Long:  `Save secret V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationService := &csm.ConfigurationService{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.GeneratedSaveConfigurationV1Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration.SaveSecretV1Params{
			Body:      body,
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := configurationService.SaveSecretV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	SaveSecretV1Cmd.Flags().String("body", "", "Body")
	_ = SaveSecretV1Cmd.MarkFlagRequired("body")
	SaveSecretV1Cmd.Flags().String("app", "", "App")
	_ = SaveSecretV1Cmd.MarkFlagRequired("app")
	SaveSecretV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = SaveSecretV1Cmd.MarkFlagRequired("namespace")
}
