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

// AdminDeleteConfigurationTemplateV1Cmd represents the AdminDeleteConfigurationTemplateV1 command
var AdminDeleteConfigurationTemplateV1Cmd = &cobra.Command{
	Use:   "adminDeleteConfigurationTemplateV1",
	Short: "Admin delete configuration template V1",
	Long:  `Admin delete configuration template V1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationTemplateService := &session.ConfigurationTemplateService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		name, _ := cmd.Flags().GetString("name")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration_template.AdminDeleteConfigurationTemplateV1Params{
			Name:      name,
			Namespace: namespace,
		}
		ok, err := configurationTemplateService.AdminDeleteConfigurationTemplateV1Short(input)
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
	AdminDeleteConfigurationTemplateV1Cmd.Flags().String("name", "", "Name")
	_ = AdminDeleteConfigurationTemplateV1Cmd.MarkFlagRequired("name")
	AdminDeleteConfigurationTemplateV1Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminDeleteConfigurationTemplateV1Cmd.MarkFlagRequired("namespace")
}
