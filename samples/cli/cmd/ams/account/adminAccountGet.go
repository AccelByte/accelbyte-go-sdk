// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package account

import (
	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/account"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ams"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminAccountGetCmd represents the AdminAccountGet command
var AdminAccountGetCmd = &cobra.Command{
	Use:   "adminAccountGet",
	Short: "Admin account get",
	Long:  `Admin account get`,
	RunE: func(cmd *cobra.Command, args []string) error {
		accountService := &ams.AccountService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &account.AdminAccountGetParams{
			Namespace: namespace,
		}
		ok, errOK := accountService.AdminAccountGetShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminAccountGetCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminAccountGetCmd.MarkFlagRequired("namespace")
}
