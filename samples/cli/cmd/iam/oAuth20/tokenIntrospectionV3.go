// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package oAuth20

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// tokenIntrospectionV3Cmd represents the tokenIntrospectionV3 command
var tokenIntrospectionV3Cmd = &cobra.Command{
	Use:   "tokenIntrospectionV3",
	Short: "Token introspection V3",
	Long:  `Token introspection V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20Service := &iam.OAuth20Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		token, _ := cmd.Flags().GetString("token")
		input := &o_auth2_0.TokenIntrospectionV3Params{
			Token: token,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := oAuth20Service.TokenIntrospectionV3(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(tokenIntrospectionV3Cmd)
	tokenIntrospectionV3Cmd.Flags().StringP("token", "tn", " ", "Token")
	_ = tokenIntrospectionV3Cmd.MarkFlagRequired("token")
}
