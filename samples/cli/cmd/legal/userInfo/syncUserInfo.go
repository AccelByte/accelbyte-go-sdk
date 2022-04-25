// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userInfo

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/user_info"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// SyncUserInfoCmd represents the SyncUserInfo command
var SyncUserInfoCmd = &cobra.Command{
	Use:   "syncUserInfo",
	Short: "Sync user info",
	Long:  `Sync user info`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userInfoService := &legal.UserInfoService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &user_info.SyncUserInfoParams{
			Namespace: namespace,
		}
		errInput := userInfoService.SyncUserInfoShort(input, nil)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	SyncUserInfoCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = SyncUserInfoCmd.MarkFlagRequired("namespace")
}
