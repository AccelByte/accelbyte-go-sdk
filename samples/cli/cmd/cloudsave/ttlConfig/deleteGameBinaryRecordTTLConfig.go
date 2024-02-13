// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ttlConfig

import (
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/ttl_config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/cloudsave"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteGameBinaryRecordTTLConfigCmd represents the DeleteGameBinaryRecordTTLConfig command
var DeleteGameBinaryRecordTTLConfigCmd = &cobra.Command{
	Use:   "deleteGameBinaryRecordTTLConfig",
	Short: "Delete game binary record TTL config",
	Long:  `Delete game binary record TTL config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		ttlConfigService := &cloudsave.TTLConfigService{
			Client:          factory.NewCloudsaveClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		key, _ := cmd.Flags().GetString("key")
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &ttl_config.DeleteGameBinaryRecordTTLConfigParams{
			Key:       key,
			Namespace: namespace,
		}
		errNoContent := ttlConfigService.DeleteGameBinaryRecordTTLConfigShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteGameBinaryRecordTTLConfigCmd.Flags().String("key", "", "Key")
	_ = DeleteGameBinaryRecordTTLConfigCmd.MarkFlagRequired("key")
	DeleteGameBinaryRecordTTLConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteGameBinaryRecordTTLConfigCmd.MarkFlagRequired("namespace")
}
