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

// RequestTokenExchangeCodeV3Cmd represents the RequestTokenExchangeCodeV3 command
var RequestTokenExchangeCodeV3Cmd = &cobra.Command{
	Use:   "requestTokenExchangeCodeV3",
	Short: "Request token exchange code V3",
	Long:  `Request token exchange code V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20ExtensionService := &iam.OAuth20ExtensionService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		clientId, _ := cmd.Flags().GetString("clientId")
		namespace, _ := cmd.Flags().GetString("namespace")
		codeChallenge, _ := cmd.Flags().GetString("codeChallenge")
		codeChallengeMethod, _ := cmd.Flags().GetString("codeChallengeMethod")
		input := &o_auth2_0_extension.RequestTokenExchangeCodeV3Params{
			ClientID:            clientId,
			Namespace:           namespace,
			CodeChallenge:       &codeChallenge,
			CodeChallengeMethod: &codeChallengeMethod,
		}
		ok, errOK := oAuth20ExtensionService.RequestTokenExchangeCodeV3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RequestTokenExchangeCodeV3Cmd.Flags().String("clientId", "", "Client id")
	_ = RequestTokenExchangeCodeV3Cmd.MarkFlagRequired("client_id")
	RequestTokenExchangeCodeV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = RequestTokenExchangeCodeV3Cmd.MarkFlagRequired("namespace")
	RequestTokenExchangeCodeV3Cmd.Flags().String("codeChallenge", "", "Code challenge")
	RequestTokenExchangeCodeV3Cmd.Flags().String("codeChallengeMethod", "", "Code challenge method")
}
