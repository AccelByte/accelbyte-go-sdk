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

// AdminCreateConfigurationAlertV1Cmd represents the AdminCreateConfigurationAlertV1 command
var AdminCreateConfigurationAlertV1Cmd = &cobra.Command{
	Use:   "adminCreateConfigurationAlertV1",
	Short: "Admin create configuration alert V1",
	Long:  `Admin create configuration alert V1`,
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
		input := &configuration_template.AdminCreateConfigurationAlertV1Params{
			Body:      body,
			Namespace: namespace,
		}
		created, errCreated := configurationTemplateService.AdminCreateConfigurationAlertV1Short(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	AdminCreateConfigurationAlertV1Cmd.Flags().String("body", "", "Body")
	_ = AdminCreateConfigurationAlertV1Cmd.MarkFlagRequired("body")
	AdminCreateConfigurationAlertV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminCreateConfigurationAlertV1Cmd.MarkFlagRequired("namespace")
}
