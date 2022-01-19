// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/s_s_o"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// loginSSOClientCmd represents the loginSSOClient command
var loginSSOClientCmd = &cobra.Command{
	Use:   "loginSSOClient",
	Short: "Login SSO client",
	Long:  `Login SSO client`,
	RunE: func(cmd *cobra.Command, args []string) error {
		ssoService := &iam.SSOService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		platformId, _ := cmd.Flags().GetString("platformId")
		payload, _ := cmd.Flags().GetString("payload")
		input := &s_s_o.LoginSSOClientParams{
			PlatformID: platformId,
			Payload:    &payload,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := ssoService.LoginSSOClient(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(loginSSOClientCmd)
	loginSSOClientCmd.Flags().StringP("platformId", "p", " ", "Platform id")
	_ = loginSSOClientCmd.MarkFlagRequired("platformId")
	loginSSOClientCmd.Flags().StringP("payload", "p", " ", "Payload")
}
