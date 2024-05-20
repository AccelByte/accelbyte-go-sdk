// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package configuration

import (
	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclient/configuration"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/gdpr"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminResetPlatformAccountClosureServicesConfigurationCmd represents the AdminResetPlatformAccountClosureServicesConfiguration command
var AdminResetPlatformAccountClosureServicesConfigurationCmd = &cobra.Command{
	Use:   "adminResetPlatformAccountClosureServicesConfiguration",
	Short: "Admin reset platform account closure services configuration",
	Long:  `Admin reset platform account closure services configuration`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationService := &gdpr.ConfigurationService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration.AdminResetPlatformAccountClosureServicesConfigurationParams{
			Namespace: namespace,
		}
		errNoContent := configurationService.AdminResetPlatformAccountClosureServicesConfigurationShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminResetPlatformAccountClosureServicesConfigurationCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminResetPlatformAccountClosureServicesConfigurationCmd.MarkFlagRequired("namespace")
}
