// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dsmcDefaultConfiguration

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/session"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/d_s_m_c_default_configuration"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetDSMCConfigurationDefaultCmd represents the AdminGetDSMCConfigurationDefault command
var AdminGetDSMCConfigurationDefaultCmd = &cobra.Command{
	Use:   "adminGetDSMCConfigurationDefault",
	Short: "Admin get DSMC configuration default",
	Long:  `Admin get DSMC configuration default`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dsmcDefaultConfigurationService := &session.DSMCDefaultConfigurationService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &d_s_m_c_default_configuration.AdminGetDSMCConfigurationDefaultParams{}
		ok, errOK := dsmcDefaultConfigurationService.AdminGetDSMCConfigurationDefaultShort(input)
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
