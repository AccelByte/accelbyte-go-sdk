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

// SaveVariableV1Cmd represents the SaveVariableV1 command
var SaveVariableV1Cmd = &cobra.Command{
	Use:   "saveVariableV1",
	Short: "Save variable V1",
	Long:  `Save variable V1`,
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
		input := &configuration.SaveVariableV1Params{
			Body:      body,
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := configurationService.SaveVariableV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	SaveVariableV1Cmd.Flags().String("body", "", "Body")
	_ = SaveVariableV1Cmd.MarkFlagRequired("body")
	SaveVariableV1Cmd.Flags().String("app", "", "App")
	_ = SaveVariableV1Cmd.MarkFlagRequired("app")
	SaveVariableV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = SaveVariableV1Cmd.MarkFlagRequired("namespace")
}
