// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminVerifyUserWithoutVerificationCodeV3Cmd represents the adminVerifyUserWithoutVerificationCodeV3 command
var adminVerifyUserWithoutVerificationCodeV3Cmd = &cobra.Command{
	Use:   "adminVerifyUserWithoutVerificationCodeV3",
	Short: "Admin verify user without verification code V3",
	Long:  `Admin verify user without verification code V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminVerifyUserWithoutVerificationCodeV3Params{
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := usersService.AdminVerifyUserWithoutVerificationCodeV3(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminVerifyUserWithoutVerificationCodeV3Cmd)
	adminVerifyUserWithoutVerificationCodeV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminVerifyUserWithoutVerificationCodeV3Cmd.MarkFlagRequired("namespace")
	adminVerifyUserWithoutVerificationCodeV3Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = adminVerifyUserWithoutVerificationCodeV3Cmd.MarkFlagRequired("userId")
}
