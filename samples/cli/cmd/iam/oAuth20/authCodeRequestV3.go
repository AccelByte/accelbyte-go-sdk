// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package oAuth20

import (
	"net/http"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AuthCodeRequestV3Cmd represents the AuthCodeRequestV3 command
var AuthCodeRequestV3Cmd = &cobra.Command{
	Use:   "authCodeRequestV3",
	Short: "Auth code request V3",
	Long:  `Auth code request V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20Service := &iam.OAuth20Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		platformId, _ := cmd.Flags().GetString("platformId")
		requestId, _ := cmd.Flags().GetString("requestId")
		clientId, _ := cmd.Flags().GetString("clientId")
		redirectUri, _ := cmd.Flags().GetString("redirectUri")
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &o_auth2_0.AuthCodeRequestV3Params{
			PlatformID:  platformId,
			ClientID:    &clientId,
			RedirectURI: &redirectUri,
			RequestID:   requestId,
			HTTPClient:  httpClient,
		}
		_, errFound := oAuth20Service.AuthCodeRequestV3Short(input)
		if errFound != nil {
			logrus.Error(errFound)

			return errFound
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AuthCodeRequestV3Cmd.Flags().String("platformId", "", "Platform id")
	_ = AuthCodeRequestV3Cmd.MarkFlagRequired("platformId")
	AuthCodeRequestV3Cmd.Flags().String("clientId", "", "Client id")
	AuthCodeRequestV3Cmd.Flags().String("redirectUri", "", "Redirect uri")
	AuthCodeRequestV3Cmd.Flags().String("requestId", "", "Request id")
	_ = AuthCodeRequestV3Cmd.MarkFlagRequired("request_id")
}
