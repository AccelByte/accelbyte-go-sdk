// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package users

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetUserVerificationCodeCmd represents the GetUserVerificationCode command
var GetUserVerificationCodeCmd = &cobra.Command{
	Use:   "getUserVerificationCode",
	Short: "Get user verification code",
	Long:  `Get user verification code`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.GetUserVerificationCodeParams{
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.GetUserVerificationCode(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}
		return nil
	},
}

func init() {
	GetUserVerificationCodeCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetUserVerificationCodeCmd.MarkFlagRequired("namespace")
	GetUserVerificationCodeCmd.Flags().StringP("userId", "", "", "User id")
	_ = GetUserVerificationCodeCmd.MarkFlagRequired("userId")
}
