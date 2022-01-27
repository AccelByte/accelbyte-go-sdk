// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package sso

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/s_s_o"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// logoutSSOClientCmd represents the logoutSSOClient command
var logoutSSOClientCmd = &cobra.Command{
	Use:   "logoutSSOClient",
	Short: "Logout SSO client",
	Long:  `Logout SSO client`,
	RunE: func(cmd *cobra.Command, args []string) error {
		ssoService := &iam.SSOService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		platformId, _ := cmd.Flags().GetString("platformId")
		input := &s_s_o.LogoutSSOClientParams{
			PlatformID: platformId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := ssoService.LogoutSSOClient(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(logoutSSOClientCmd)
	logoutSSOClientCmd.Flags().StringP("platformId", "pd", " ", "Platform id")
	_ = logoutSSOClientCmd.MarkFlagRequired("platformId")
}
