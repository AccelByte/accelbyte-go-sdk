// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclient/config"
	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/chat"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminPatchUpdateLogConfigCmd represents the AdminPatchUpdateLogConfig command
var AdminPatchUpdateLogConfigCmd = &cobra.Command{
	Use:   "adminPatchUpdateLogConfig",
	Short: "Admin patch update log config",
	Long:  `Admin patch update log config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &chat.ConfigService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *chatclientmodels.LogconfigConfiguration
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &config.AdminPatchUpdateLogConfigParams{
			Body: body,
		}
		ok, errOK := configService.AdminPatchUpdateLogConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminPatchUpdateLogConfigCmd.Flags().String("body", "", "Body")
	_ = AdminPatchUpdateLogConfigCmd.MarkFlagRequired("body")
}
