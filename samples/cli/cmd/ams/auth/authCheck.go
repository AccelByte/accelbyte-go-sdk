// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package auth

import (
	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/auth"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ams"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AuthCheckCmd represents the AuthCheck command
var AuthCheckCmd = &cobra.Command{
	Use:   "authCheck",
	Short: "Auth check",
	Long:  `Auth check`,
	RunE: func(cmd *cobra.Command, args []string) error {
		authService := &ams.AuthService{
			Client:          factory.NewAmsClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		input := &auth.AuthCheckParams{}
		errOK := authService.AuthCheckShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
}
