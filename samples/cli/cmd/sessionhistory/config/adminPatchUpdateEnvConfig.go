// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/sessionhistory"
	"github.com/AccelByte/accelbyte-go-sdk/sessionhistory-sdk/pkg/sessionhistoryclient/config"
	"github.com/AccelByte/accelbyte-go-sdk/sessionhistory-sdk/pkg/sessionhistoryclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminPatchUpdateEnvConfigCmd represents the AdminPatchUpdateEnvConfig command
var AdminPatchUpdateEnvConfigCmd = &cobra.Command{
	Use:   "adminPatchUpdateEnvConfig",
	Short: "Admin patch update env config",
	Long:  `Admin patch update env config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &sessionhistory.ConfigService{
			Client:          factory.NewSessionhistoryClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *sessionhistoryclientmodels.EnvconfigConfiguration
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &config.AdminPatchUpdateEnvConfigParams{
			Body: body,
		}
		ok, errOK := configService.AdminPatchUpdateEnvConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminPatchUpdateEnvConfigCmd.Flags().String("body", "", "Body")
	_ = AdminPatchUpdateEnvConfigCmd.MarkFlagRequired("body")
}
