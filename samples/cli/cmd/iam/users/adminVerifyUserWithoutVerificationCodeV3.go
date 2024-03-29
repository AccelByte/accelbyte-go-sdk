// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminVerifyUserWithoutVerificationCodeV3Cmd represents the AdminVerifyUserWithoutVerificationCodeV3 command
var AdminVerifyUserWithoutVerificationCodeV3Cmd = &cobra.Command{
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
		errNoContent := usersService.AdminVerifyUserWithoutVerificationCodeV3Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	AdminVerifyUserWithoutVerificationCodeV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = AdminVerifyUserWithoutVerificationCodeV3Cmd.MarkFlagRequired("namespace")
	AdminVerifyUserWithoutVerificationCodeV3Cmd.Flags().String("userId", "", "User id")
	_ = AdminVerifyUserWithoutVerificationCodeV3Cmd.MarkFlagRequired("userId")
}
