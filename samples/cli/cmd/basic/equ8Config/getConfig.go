// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/e_q_u8_config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getConfigCmd represents the getConfig command
var getConfigCmd = &cobra.Command{
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
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getConfigCmd)
	getConfigCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getConfigCmd.MarkFlagRequired("namespace")
}