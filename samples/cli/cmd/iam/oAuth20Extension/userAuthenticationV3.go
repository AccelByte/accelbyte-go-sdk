// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package oAuth20Extension

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UserAuthenticationV3Cmd represents the UserAuthenticationV3 command
var UserAuthenticationV3Cmd = &cobra.Command{
	Use:   "UserAuthenticationV3",
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
	UserAuthenticationV3Cmd.Flags().StringP("client_id", "cd", " ", "Client id")
	UserAuthenticationV3Cmd.Flags().BoolP("extend_exp", "ep", false, "Extend exp")
	UserAuthenticationV3Cmd.Flags().StringP("redirect_uri", "ri", " ", "Redirect uri")
	UserAuthenticationV3Cmd.Flags().StringP("password", "pd", " ", "Password")
	_ = UserAuthenticationV3Cmd.MarkFlagRequired("password")
	UserAuthenticationV3Cmd.Flags().StringP("request_id", "rd", " ", "Request id")
	_ = UserAuthenticationV3Cmd.MarkFlagRequired("request_id")
	UserAuthenticationV3Cmd.Flags().StringP("user_name", "ue", " ", "User name")
	_ = UserAuthenticationV3Cmd.MarkFlagRequired("user_name")
}
