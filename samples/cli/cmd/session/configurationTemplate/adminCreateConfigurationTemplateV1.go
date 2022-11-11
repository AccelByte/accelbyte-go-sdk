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

// AdminCreateConfigurationTemplateV1Cmd represents the AdminCreateConfigurationTemplateV1 command
var AdminCreateConfigurationTemplateV1Cmd = &cobra.Command{
	Use:   "adminCreateConfigurationTemplateV1",
	Short: "Admin create configuration template V1",
	Long:  `Admin create configuration template V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationTemplateService := &session.ConfigurationTemplateService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *sessionclientmodels.ApimodelsCreateConfigurationTemplateRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration_template.AdminCreateConfigurationTemplateV1Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, err := configurationTemplateService.AdminCreateConfigurationTemplateV1Short(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	AdminCreateConfigurationTemplateV1Cmd.Flags().String("body", "", "Body")
	_ = AdminCreateConfigurationTemplateV1Cmd.MarkFlagRequired("body")
	AdminCreateConfigurationTemplateV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminCreateConfigurationTemplateV1Cmd.MarkFlagRequired("namespace")
}
