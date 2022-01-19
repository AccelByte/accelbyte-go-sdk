// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// userAuthenticationV3Cmd represents the userAuthenticationV3 command
var userAuthenticationV3Cmd = &cobra.Command{
	Use:   "userAuthenticationV3",
	Short: "User authentication V3",
	Long:  `User authentication V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20ExtensionService := &iam.OAuth20ExtensionService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		password, _ := cmd.Flags().GetString("password")
		requestId, _ := cmd.Flags().GetString("requestId")
		userName, _ := cmd.Flags().GetString("userName")
		clientId, _ := cmd.Flags().GetString("clientId")
		extendExp, _ := cmd.Flags().GetBool("extendExp")
		redirectUri, _ := cmd.Flags().GetString("redirectUri")
		input := &o_auth2_0_extension.UserAuthenticationV3Params{
			ClientID:    &clientId,
			ExtendExp:   &extendExp,
			RedirectURI: &redirectUri,
			Password:    password,
			RequestID:   requestId,
			UserName:    userName,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := oAuth20ExtensionService.UserAuthenticationV3(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(userAuthenticationV3Cmd)
	userAuthenticationV3Cmd.Flags().StringP("client_id", "c", " ", "Client id")
	userAuthenticationV3Cmd.Flags().BoolP("extend_exp", "e", false, "Extend exp")
	userAuthenticationV3Cmd.Flags().StringP("redirect_uri", "r", " ", "Redirect uri")
	userAuthenticationV3Cmd.Flags().StringP("password", "p", " ", "Password")
	_ = userAuthenticationV3Cmd.MarkFlagRequired("password")
	userAuthenticationV3Cmd.Flags().StringP("request_id", "r", " ", "Request id")
	_ = userAuthenticationV3Cmd.MarkFlagRequired("request_id")
	userAuthenticationV3Cmd.Flags().StringP("user_name", "u", " ", "User name")
	_ = userAuthenticationV3Cmd.MarkFlagRequired("user_name")
}
