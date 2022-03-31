// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package oAuth20

import (
	"net/http"

	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
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
		_, errInput := oAuth20Service.AuthCodeRequestV3Short(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	AuthCodeRequestV3Cmd.Flags().StringP("platformId", "", "", "Platform id")
	_ = AuthCodeRequestV3Cmd.MarkFlagRequired("platformId")
	AuthCodeRequestV3Cmd.Flags().StringP("clientId", "", "", "Client id")
	AuthCodeRequestV3Cmd.Flags().StringP("redirectUri", "", "", "Redirect uri")
	AuthCodeRequestV3Cmd.Flags().StringP("requestId", "", "", "Request id")
	_ = AuthCodeRequestV3Cmd.MarkFlagRequired("request_id")
}
