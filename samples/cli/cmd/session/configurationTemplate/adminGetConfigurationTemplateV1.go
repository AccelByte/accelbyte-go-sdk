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

// AdminGetConfigurationTemplateV1Cmd represents the AdminGetConfigurationTemplateV1 command
var AdminGetConfigurationTemplateV1Cmd = &cobra.Command{
	Use:   "adminGetConfigurationTemplateV1",
	Short: "Admin get configuration template V1",
	Long:  `Admin get configuration template V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationTemplateService := &session.ConfigurationTemplateService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		name, _ := cmd.Flags().GetString("name")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration_template.AdminGetConfigurationTemplateV1Params{
			Name:      name,
			Namespace: namespace,
		}
		ok, err := configurationTemplateService.AdminGetConfigurationTemplateV1Short(input)
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
	AdminGetConfigurationTemplateV1Cmd.Flags().String("name", "", "Name")
	_ = AdminGetConfigurationTemplateV1Cmd.MarkFlagRequired("name")
	AdminGetConfigurationTemplateV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetConfigurationTemplateV1Cmd.MarkFlagRequired("namespace")
}
