// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth20Extension

import (
	"net/http"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UserAuthenticationV3Cmd represents the UserAuthenticationV3 command
var UserAuthenticationV3Cmd = &cobra.Command{
	Use:   "userAuthenticationV3",
	Short: "User authentication V3",
	Long:  `User authentication V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20ExtensionService := &iam.OAuth20ExtensionService{
			Client:           factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			ConfigRepository: &repository.ConfigRepositoryImpl{},
			TokenRepository:  &repository.TokenRepositoryImpl{},
		}
		password, _ := cmd.Flags().GetString("password")
		requestId, _ := cmd.Flags().GetString("requestId")
		userName, _ := cmd.Flags().GetString("userName")
		clientId, _ := cmd.Flags().GetString("clientId")
		extendExp, _ := cmd.Flags().GetBool("extendExp")
		redirectUri, _ := cmd.Flags().GetString("redirectUri")
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &o_auth2_0_extension.UserAuthenticationV3Params{
			ClientID:    &clientId,
			ExtendExp:   &extendExp,
			RedirectURI: &redirectUri,
			Password:    password,
			RequestID:   requestId,
			UserName:    userName,
			HTTPClient:  httpClient,
		}
		_, errFound := oAuth20ExtensionService.UserAuthenticationV3Short(input)
		if errFound != nil {
			logrus.Error(errFound)

			return errFound
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	UserAuthenticationV3Cmd.Flags().String("clientId", "", "Client id")
	UserAuthenticationV3Cmd.Flags().Bool("extendExp", false, "Extend exp")
	UserAuthenticationV3Cmd.Flags().String("redirectUri", "", "Redirect uri")
	UserAuthenticationV3Cmd.Flags().String("password", "", "Password")
	_ = UserAuthenticationV3Cmd.MarkFlagRequired("password")
	UserAuthenticationV3Cmd.Flags().String("requestId", "", "Request id")
	_ = UserAuthenticationV3Cmd.MarkFlagRequired("request_id")
	UserAuthenticationV3Cmd.Flags().String("userName", "", "User name")
	_ = UserAuthenticationV3Cmd.MarkFlagRequired("user_name")
}
