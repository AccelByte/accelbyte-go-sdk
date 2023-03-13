// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/config"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateConfig1Cmd represents the UpdateConfig1 command
var UpdateConfig1Cmd = &cobra.Command{
	Use:   "updateConfig1",
	Short: "Update config 1",
	Long:  `Update config 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &basic.ConfigService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		configKey, _ := cmd.Flags().GetString("configKey")
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body *basicclientmodels.ConfigUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &config.UpdateConfig1Params{
			Body:      body,
			ConfigKey: configKey,
			Namespace: namespace,
		}
		created, errCreated := configService.UpdateConfig1Short(input)
		if errCreated != nil {
			logrus.Error(errCreated)

			return errCreated
		}

		logrus.Infof("Response CLI success: %+v", created)

		return nil
	},
}

func init() {
	UpdateConfig1Cmd.Flags().String("body", "", "Body")
	UpdateConfig1Cmd.Flags().String("configKey", "", "Config key")
	_ = UpdateConfig1Cmd.MarkFlagRequired("configKey")
	UpdateConfig1Cmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateConfig1Cmd.MarkFlagRequired("namespace")
}
