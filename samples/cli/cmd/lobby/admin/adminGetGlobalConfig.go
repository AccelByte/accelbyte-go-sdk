// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin

import (
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/admin"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetGlobalConfigCmd represents the AdminGetGlobalConfig command
var AdminGetGlobalConfigCmd = &cobra.Command{
	Use:   "adminGetGlobalConfig",
	Short: "Admin get global config",
	Long:  `Admin get global config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminService := &lobby.AdminService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &admin.AdminGetGlobalConfigParams{}
		ok, errOK := adminService.AdminGetGlobalConfigShort(input)
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
