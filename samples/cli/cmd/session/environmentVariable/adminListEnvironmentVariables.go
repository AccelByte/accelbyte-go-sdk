// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package environmentVariable

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/session"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/environment_variable"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminListEnvironmentVariablesCmd represents the AdminListEnvironmentVariables command
var AdminListEnvironmentVariablesCmd = &cobra.Command{
	Use:   "adminListEnvironmentVariables",
	Short: "Admin list environment variables",
	Long:  `Admin list environment variables`,
	RunE: func(cmd *cobra.Command, args []string) error {
		environmentVariableService := &session.EnvironmentVariableService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &environment_variable.AdminListEnvironmentVariablesParams{}
		ok, errOK := environmentVariableService.AdminListEnvironmentVariablesShort(input)
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
