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

// AuthenticateAndLinkForwardV3Cmd represents the AuthenticateAndLinkForwardV3 command
var AuthenticateAndLinkForwardV3Cmd = &cobra.Command{
	Use:   "authenticateAndLinkForwardV3",
	Short: "Authenticate and link forward V3",
	Long:  `Authenticate and link forward V3`,
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
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &o_auth2_0_extension.AuthenticateAndLinkForwardV3Params{
			ExtendExp:    &extendExp,
			ClientID:     clientId,
			LinkingToken: linkingToken,
			Password:     password,
			Username:     username,
			HTTPClient:   httpClient,
		}
		_, errFound := oAuth20ExtensionService.AuthenticateAndLinkForwardV3Short(input)
		if errFound != nil {
			logrus.Error(errFound)

			return errFound
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AuthenticateAndLinkForwardV3Cmd.Flags().Bool("extendExp", false, "Extend exp")
	AuthenticateAndLinkForwardV3Cmd.Flags().String("clientId", "", "Client id")
	_ = AuthenticateAndLinkForwardV3Cmd.MarkFlagRequired("client_id")
	AuthenticateAndLinkForwardV3Cmd.Flags().String("linkingToken", "", "Linking token")
	_ = AuthenticateAndLinkForwardV3Cmd.MarkFlagRequired("linkingToken")
	AuthenticateAndLinkForwardV3Cmd.Flags().String("password", "", "Password")
	_ = AuthenticateAndLinkForwardV3Cmd.MarkFlagRequired("password")
	AuthenticateAndLinkForwardV3Cmd.Flags().String("username", "", "Username")
	_ = AuthenticateAndLinkForwardV3Cmd.MarkFlagRequired("username")
}
