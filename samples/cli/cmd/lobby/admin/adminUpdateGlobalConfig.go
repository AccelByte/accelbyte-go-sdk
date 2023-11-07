// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclient/admin"
	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/lobby"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminUpdateGlobalConfigCmd represents the AdminUpdateGlobalConfig command
var AdminUpdateGlobalConfigCmd = &cobra.Command{
	Use:   "adminUpdateGlobalConfig",
	Short: "Admin update global config",
	Long:  `Admin update global config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminService := &lobby.AdminService{
			Client:          factory.NewLobbyClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *lobbyclientmodels.ModelPutGlobalConfigurationRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &admin.AdminUpdateGlobalConfigParams{
			Body: body,
		}
		ok, errOK := adminService.AdminUpdateGlobalConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminUpdateGlobalConfigCmd.Flags().String("body", "", "Body")
	_ = AdminUpdateGlobalConfigCmd.MarkFlagRequired("body")
}
