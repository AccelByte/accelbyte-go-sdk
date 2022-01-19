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

// publicValidateUserByUserIDAndPasswordV3Cmd represents the publicValidateUserByUserIDAndPasswordV3 command
var publicValidateUserByUserIDAndPasswordV3Cmd = &cobra.Command{
	Use:   "publicValidateUserByUserIDAndPasswordV3",
	Short: "Public validate user by user ID and password V3",
	Long:  `Public validate user by user ID and password V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		password, _ := cmd.Flags().GetString("password")
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.PublicValidateUserByUserIDAndPasswordV3Params{
			Password:  password,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := usersService.PublicValidateUserByUserIDAndPasswordV3(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicValidateUserByUserIDAndPasswordV3Cmd)
	publicValidateUserByUserIDAndPasswordV3Cmd.Flags().StringP("password", "p", " ", "Password")
	_ = publicValidateUserByUserIDAndPasswordV3Cmd.MarkFlagRequired("password")
	publicValidateUserByUserIDAndPasswordV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicValidateUserByUserIDAndPasswordV3Cmd.MarkFlagRequired("namespace")
	publicValidateUserByUserIDAndPasswordV3Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = publicValidateUserByUserIDAndPasswordV3Cmd.MarkFlagRequired("userId")
}
