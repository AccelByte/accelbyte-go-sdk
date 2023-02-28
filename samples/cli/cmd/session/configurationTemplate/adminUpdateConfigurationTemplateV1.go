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

// AdminUpdateConfigurationTemplateV1Cmd represents the AdminUpdateConfigurationTemplateV1 command
var AdminUpdateConfigurationTemplateV1Cmd = &cobra.Command{
	Use:   "adminUpdateConfigurationTemplateV1",
	Short: "Admin update configuration template V1",
	Long:  `Admin update configuration template V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationTemplateService := &session.ConfigurationTemplateService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *sessionclientmodels.ApimodelsUpdateConfigurationTemplateRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		name, _ := cmd.Flags().GetString("name")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration_template.AdminUpdateConfigurationTemplateV1Params{
			Body:      body,
			Name:      name,
			Namespace: namespace,
		}
		ok, errOK := configurationTemplateService.AdminUpdateConfigurationTemplateV1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpdateConfigurationTemplateV1Cmd.Flags().String("body", "", "Body")
	_ = AdminUpdateConfigurationTemplateV1Cmd.MarkFlagRequired("body")
	AdminUpdateConfigurationTemplateV1Cmd.Flags().String("name", "", "Name")
	_ = AdminUpdateConfigurationTemplateV1Cmd.MarkFlagRequired("name")
	AdminUpdateConfigurationTemplateV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminUpdateConfigurationTemplateV1Cmd.MarkFlagRequired("namespace")
}
