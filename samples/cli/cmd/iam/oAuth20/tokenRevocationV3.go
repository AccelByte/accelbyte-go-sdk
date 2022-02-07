// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package oAuth20

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// TokenRevocationV3Cmd represents the TokenRevocationV3 command
var TokenRevocationV3Cmd = &cobra.Command{
	Use:   "tokenRevocationV3",
	Short: "Token revocation V3",
	Long:  `Token revocation V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuth20Service := &iam.OAuth20Service{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		token, _ := cmd.Flags().GetString("token")
		input := &o_auth2_0.TokenRevocationV3Params{
			Token: token,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := oAuth20Service.TokenRevocationV3(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	TokenRevocationV3Cmd.Flags().StringP("token", "", "", "Token")
	_ = TokenRevocationV3Cmd.MarkFlagRequired("token")
}
