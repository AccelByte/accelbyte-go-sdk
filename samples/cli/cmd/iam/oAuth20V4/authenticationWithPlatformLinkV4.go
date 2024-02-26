// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth20V4

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_v4"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AuthenticationWithPlatformLinkV4Cmd represents the AuthenticationWithPlatformLinkV4 command
var AuthenticationWithPlatformLinkV4Cmd = &cobra.Command{
	Use:   "authenticationWithPlatformLinkV4",
	Short: "Authentication with platform link V4",
	Long:  `Authentication with platform link V4`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20V4Service := &iam.OAuth20v4Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		clientId, _ := cmd.Flags().GetString("clientId")
		linkingToken, _ := cmd.Flags().GetString("linkingToken")
		password, _ := cmd.Flags().GetString("password")
		username, _ := cmd.Flags().GetString("username")
		extendExp, _ := cmd.Flags().GetBool("extendExp")
		input := &o_auth2_0_v4.AuthenticationWithPlatformLinkV4Params{
			ExtendExp:    &extendExp,
			ClientID:     clientId,
			LinkingToken: linkingToken,
			Password:     password,
			Username:     username,
		}
		ok, errOK := oAuth20V4Service.AuthenticationWithPlatformLinkV4Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AuthenticationWithPlatformLinkV4Cmd.Flags().Bool("extendExp", false, "Extend exp")
	AuthenticationWithPlatformLinkV4Cmd.Flags().String("clientId", "", "Client id")
	_ = AuthenticationWithPlatformLinkV4Cmd.MarkFlagRequired("client_id")
	AuthenticationWithPlatformLinkV4Cmd.Flags().String("linkingToken", "", "Linking token")
	_ = AuthenticationWithPlatformLinkV4Cmd.MarkFlagRequired("linkingToken")
	AuthenticationWithPlatformLinkV4Cmd.Flags().String("password", "", "Password")
	_ = AuthenticationWithPlatformLinkV4Cmd.MarkFlagRequired("password")
	AuthenticationWithPlatformLinkV4Cmd.Flags().String("username", "", "Username")
	_ = AuthenticationWithPlatformLinkV4Cmd.MarkFlagRequired("username")
}
