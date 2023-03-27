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

// AdminGetDSMCConfigurationCmd represents the AdminGetDSMCConfiguration command
var AdminGetDSMCConfigurationCmd = &cobra.Command{
	Use:   "adminGetDSMCConfiguration",
	Short: "Admin get DSMC configuration",
	Long:  `Admin get DSMC configuration`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationTemplateService := &session.ConfigurationTemplateService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration_template.AdminGetDSMCConfigurationParams{
			Namespace: namespace,
		}
		ok, errOK := configurationTemplateService.AdminGetDSMCConfigurationShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetDSMCConfigurationCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetDSMCConfigurationCmd.MarkFlagRequired("namespace")
}
