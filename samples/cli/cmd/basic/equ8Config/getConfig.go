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

// GetConfigCmd represents the GetConfig command
var GetConfigCmd = &cobra.Command{
	Use:   "getConfig",
	Short: "Get config",
	Long:  `Get config`,
	RunE: func(cmd *cobra.Command, args []string) error {
		equ8ConfigService := &basic.EQU8ConfigService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &equ8_config.GetConfigParams{
			Namespace: namespace,
		}
		ok, errOK := equ8ConfigService.GetConfigShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetConfigCmd.Flags().String("namespace", "", "Namespace")
	_ = GetConfigCmd.MarkFlagRequired("namespace")
}
