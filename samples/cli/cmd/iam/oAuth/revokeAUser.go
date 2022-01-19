// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// revokeAUserCmd represents the revokeAUser command
var revokeAUserCmd = &cobra.Command{
	Use:   "revokeAUser",
	Short: "Revoke A user",
	Long:  `Revoke A user`,
	RunE: func(cmd *cobra.Command, args []string) error {
		oAuthService := &iam.OAuthService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		userID, _ := cmd.Flags().GetString("userID")
		input := &o_auth.RevokeAUserParams{
			UserID: userID,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := oAuthService.RevokeAUser(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(revokeAUserCmd)
	revokeAUserCmd.Flags().StringP("userID", "u", " ", "User ID")
	_ = revokeAUserCmd.MarkFlagRequired("userID")
}
