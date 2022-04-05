// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package config

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ClearCacheCmd represents the ClearCache command
var ClearCacheCmd = &cobra.Command{
	Use:   "clearCache",
	Short: "Clear cache",
	Long:  `Clear cache`,
	RunE: func(cmd *cobra.Command, args []string) error {
		configService := &dsmc.ConfigService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &config.ClearCacheParams{
			Namespace: namespace,
		}
		errInput := configService.ClearCacheShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	ClearCacheCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = ClearCacheCmd.MarkFlagRequired("namespace")
}
