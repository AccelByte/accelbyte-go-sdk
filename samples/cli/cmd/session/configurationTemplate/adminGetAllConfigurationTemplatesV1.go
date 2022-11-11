// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configurationTemplate

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/session"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/configuration_template"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetAllConfigurationTemplatesV1Cmd represents the AdminGetAllConfigurationTemplatesV1 command
var AdminGetAllConfigurationTemplatesV1Cmd = &cobra.Command{
	Use:   "adminGetAllConfigurationTemplatesV1",
	Short: "Admin get all configuration templates V1",
	Long:  `Admin get all configuration templates V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationTemplateService := &session.ConfigurationTemplateService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration_template.AdminGetAllConfigurationTemplatesV1Params{
			Namespace: namespace,
		}
		ok, err := configurationTemplateService.AdminGetAllConfigurationTemplatesV1Short(input)
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
	AdminGetAllConfigurationTemplatesV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetAllConfigurationTemplatesV1Cmd.MarkFlagRequired("namespace")
}
