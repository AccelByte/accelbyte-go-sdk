// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package globalConfiguration

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/session"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/global_configuration"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminListGlobalConfigurationCmd represents the AdminListGlobalConfiguration command
var AdminListGlobalConfigurationCmd = &cobra.Command{
	Use:   "adminListGlobalConfiguration",
	Short: "Admin list global configuration",
	Long:  `Admin list global configuration`,
	RunE: func(cmd *cobra.Command, args []string) error {
		globalConfigurationService := &session.GlobalConfigurationService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &global_configuration.AdminListGlobalConfigurationParams{}
		ok, errOK := globalConfigurationService.AdminListGlobalConfigurationShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
}
