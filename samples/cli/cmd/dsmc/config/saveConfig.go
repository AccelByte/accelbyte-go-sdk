// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/config"
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// SaveConfigCmd represents the SaveConfig command
var SaveConfigCmd = &cobra.Command{
	Use:   "saveConfig",
	Short: "Save config",
	Long:  `Save config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &dsmc.ConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *dsmcclientmodels.ModelsDSMConfigRecord
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &config.SaveConfigParams{
			Body: body,
		}
		errInput := configService.SaveConfigShort(input, nil)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	SaveConfigCmd.Flags().StringP("body", "", "", "Body")
	_ = SaveConfigCmd.MarkFlagRequired("body")
}
