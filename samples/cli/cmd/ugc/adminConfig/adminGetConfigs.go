// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminConfig

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_config"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetConfigsCmd represents the AdminGetConfigs command
var AdminGetConfigsCmd = &cobra.Command{
	Use:   "adminGetConfigs",
	Short: "Admin get configs",
	Long:  `Admin get configs`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminConfigService := &ugc.AdminConfigService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &admin_config.AdminGetConfigsParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, errOK := adminConfigService.AdminGetConfigsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetConfigsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetConfigsCmd.MarkFlagRequired("namespace")
	AdminGetConfigsCmd.Flags().Int64("limit", 20, "Limit")
	AdminGetConfigsCmd.Flags().Int64("offset", 0, "Offset")
}
