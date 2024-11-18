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

// SaveVariableV2Cmd represents the SaveVariableV2 command
var SaveVariableV2Cmd = &cobra.Command{
	Use:   "saveVariableV2",
	Short: "Save variable V2",
	Long:  `Save variable V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationV2Service := &csm.ConfigurationV2Service{
			Client:          factory.NewCsmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *csmclientmodels.ApimodelSaveConfigurationV2Request
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		app, _ := cmd.Flags().GetString("app")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration_v2.SaveVariableV2Params{
			Body:      body,
			App:       app,
			Namespace: namespace,
		}
		ok, errOK := configurationV2Service.SaveVariableV2Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	SaveVariableV2Cmd.Flags().String("body", "", "Body")
	_ = SaveVariableV2Cmd.MarkFlagRequired("body")
	SaveVariableV2Cmd.Flags().String("app", "", "App")
	_ = SaveVariableV2Cmd.MarkFlagRequired("app")
	SaveVariableV2Cmd.Flags().String("namespace", "", "Namespace")
	_ = SaveVariableV2Cmd.MarkFlagRequired("namespace")
}
