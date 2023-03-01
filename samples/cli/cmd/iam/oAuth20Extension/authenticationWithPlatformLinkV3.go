// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth20Extension

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AuthenticationWithPlatformLinkV3Cmd represents the AuthenticationWithPlatformLinkV3 command
var AuthenticationWithPlatformLinkV3Cmd = &cobra.Command{
	Use:   "authenticationWithPlatformLinkV3",
	Short: "Authentication with platform link V3",
	Long:  `Authentication with platform link V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20ExtensionService := &iam.OAuth20ExtensionService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		clientId, _ := cmd.Flags().GetString("clientId")
		linkingToken, _ := cmd.Flags().GetString("linkingToken")
		password, _ := cmd.Flags().GetString("password")
		username, _ := cmd.Flags().GetString("username")
		extendExp, _ := cmd.Flags().GetBool("extendExp")
		input := &o_auth2_0_extension.AuthenticationWithPlatformLinkV3Params{
			ExtendExp:    &extendExp,
			ClientID:     clientId,
			LinkingToken: linkingToken,
			Password:     password,
			Username:     username,
		}
		ok, errOK := oAuth20ExtensionService.AuthenticationWithPlatformLinkV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AuthenticationWithPlatformLinkV3Cmd.Flags().Bool("extendExp", false, "Extend exp")
	AuthenticationWithPlatformLinkV3Cmd.Flags().String("clientId", "", "Client id")
	_ = AuthenticationWithPlatformLinkV3Cmd.MarkFlagRequired("client_id")
	AuthenticationWithPlatformLinkV3Cmd.Flags().String("linkingToken", "", "Linking token")
	_ = AuthenticationWithPlatformLinkV3Cmd.MarkFlagRequired("linkingToken")
	AuthenticationWithPlatformLinkV3Cmd.Flags().String("password", "", "Password")
	_ = AuthenticationWithPlatformLinkV3Cmd.MarkFlagRequired("password")
	AuthenticationWithPlatformLinkV3Cmd.Flags().String("username", "", "Username")
	_ = AuthenticationWithPlatformLinkV3Cmd.MarkFlagRequired("username")
}
