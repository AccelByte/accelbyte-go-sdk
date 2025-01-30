// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminV1

import (
	"github.com/AccelByte/accelbyte-go-sdk/loginqueue-sdk/pkg/loginqueueclient/admin_v1"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/loginqueue"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetConfigurationCmd represents the AdminGetConfiguration command
var AdminGetConfigurationCmd = &cobra.Command{
	Use:   "adminGetConfiguration",
	Short: "Admin get configuration",
	Long:  `Admin get configuration`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminV1Service := &loginqueue.AdminV1Service{
			Client:          factory.NewLoginqueueClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &admin_v1.AdminGetConfigurationParams{
			Namespace: namespace,
		}
		ok, errOK := adminV1Service.AdminGetConfigurationShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetConfigurationCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetConfigurationCmd.MarkFlagRequired("namespace")
}
