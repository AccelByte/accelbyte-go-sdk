// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package config

import (
	"os"

	"github.com/AccelByte/accelbyte-go-sdk/chat-sdk/pkg/chatclient/config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/chat"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ImportConfigCmd represents the ImportConfig command
var ImportConfigCmd = &cobra.Command{
	Use:   "importConfig",
	Short: "Import config",
	Long:  `Import config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &chat.ConfigService{
			Client:          factory.NewChatClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		output := cmd.Flag("file").Value.String()
		logrus.Infof("file %v", output)
		file, err := os.Open(output)
		if err != nil {
			return err
		}
		input := &config.ImportConfigParams{
			File:      file,
			Namespace: namespace,
		}
		ok, errOK := configService.ImportConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ImportConfigCmd.Flags().String("file", "", "File")
	ImportConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = ImportConfigCmd.MarkFlagRequired("namespace")
}
