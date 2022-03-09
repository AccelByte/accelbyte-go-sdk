// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package equ8Config

import (
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/e_q_u8_config"
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
		input := &e_q_u8_config.GetConfigParams{
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := equ8ConfigService.GetConfig(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}
		return nil
	},
}

func init() {
	GetConfigCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetConfigCmd.MarkFlagRequired("namespace")
}
