// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package equ8Config

import (
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/equ8_config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteConfigCmd represents the DeleteConfig command
var DeleteConfigCmd = &cobra.Command{
	Use:   "deleteConfig",
	Short: "Delete config",
	Long:  `Delete config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		equ8ConfigService := &basic.EQU8ConfigService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &equ8_config.DeleteConfigParams{
			Namespace: namespace,
		}
		errNoContent := equ8ConfigService.DeleteConfigShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteConfigCmd.MarkFlagRequired("namespace")
}
