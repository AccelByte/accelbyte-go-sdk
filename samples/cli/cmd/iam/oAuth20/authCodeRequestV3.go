// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// authCodeRequestV3Cmd represents the authCodeRequestV3 command
var authCodeRequestV3Cmd = &cobra.Command{
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
		input := &o_auth2_0.AuthCodeRequestV3Params{
			PlatformID:  platformId,
			ClientID:    &clientId,
			RedirectURI: &redirectUri,
			RequestID:   requestId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := oAuth20Service.AuthCodeRequestV3(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(authCodeRequestV3Cmd)
	authCodeRequestV3Cmd.Flags().StringP("platformId", "p", " ", "Platform id")
	_ = authCodeRequestV3Cmd.MarkFlagRequired("platformId")
	authCodeRequestV3Cmd.Flags().StringP("client_id", "c", " ", "Client id")
	authCodeRequestV3Cmd.Flags().StringP("redirect_uri", "r", " ", "Redirect uri")
	authCodeRequestV3Cmd.Flags().StringP("request_id", "r", " ", "Request id")
	_ = authCodeRequestV3Cmd.MarkFlagRequired("request_id")
}
