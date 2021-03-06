// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package sso

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/s_s_o"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// LoginSSOClientCmd represents the LoginSSOClient command
var LoginSSOClientCmd = &cobra.Command{
	Use:   "loginSSOClient",
	Short: "Login SSO client",
	Long:  `Login SSO client`,
	RunE: func(cmd *cobra.Command, args []string) error {
		ssoService := &iam.SSOService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		platformId, _ := cmd.Flags().GetString("platformId")
		payload, _ := cmd.Flags().GetString("payload")
		input := &s_s_o.LoginSSOClientParams{
			PlatformID: platformId,
			Payload:    &payload,
		}
		errInput := ssoService.LoginSSOClientShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	LoginSSOClientCmd.Flags().String("platformId", "", "Platform id")
	_ = LoginSSOClientCmd.MarkFlagRequired("platformId")
	LoginSSOClientCmd.Flags().String("payload", "", "Payload")
}
