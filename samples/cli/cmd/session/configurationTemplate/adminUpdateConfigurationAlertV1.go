// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configurationTemplate

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/session"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/configuration_template"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminUpdateConfigurationAlertV1Cmd represents the AdminUpdateConfigurationAlertV1 command
var AdminUpdateConfigurationAlertV1Cmd = &cobra.Command{
	Use:   "adminUpdateConfigurationAlertV1",
	Short: "Admin update configuration alert V1",
	Long:  `Admin update configuration alert V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationTemplateService := &session.ConfigurationTemplateService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *sessionclientmodels.ApimodelsConfigAlertRequestCreate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration_template.AdminUpdateConfigurationAlertV1Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := configurationTemplateService.AdminUpdateConfigurationAlertV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpdateConfigurationAlertV1Cmd.Flags().String("body", "", "Body")
	_ = AdminUpdateConfigurationAlertV1Cmd.MarkFlagRequired("body")
	AdminUpdateConfigurationAlertV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateConfigurationAlertV1Cmd.MarkFlagRequired("namespace")
}
