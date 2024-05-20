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

// AdminGetPlatformAccountClosureServicesConfigurationCmd represents the AdminGetPlatformAccountClosureServicesConfiguration command
var AdminGetPlatformAccountClosureServicesConfigurationCmd = &cobra.Command{
	Use:   "adminGetPlatformAccountClosureServicesConfiguration",
	Short: "Admin get platform account closure services configuration",
	Long:  `Admin get platform account closure services configuration`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configurationService := &gdpr.ConfigurationService{
			Client:          factory.NewGdprClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &configuration.AdminGetPlatformAccountClosureServicesConfigurationParams{
			Namespace: namespace,
		}
		ok, errOK := configurationService.AdminGetPlatformAccountClosureServicesConfigurationShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetPlatformAccountClosureServicesConfigurationCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetPlatformAccountClosureServicesConfigurationCmd.MarkFlagRequired("namespace")
}
