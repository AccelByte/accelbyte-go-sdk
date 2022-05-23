// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"net/http"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicValidateUserByUserIDAndPasswordV3Cmd represents the PublicValidateUserByUserIDAndPasswordV3 command
var PublicValidateUserByUserIDAndPasswordV3Cmd = &cobra.Command{
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
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &users.PublicValidateUserByUserIDAndPasswordV3Params{
			Password:   password,
			Namespace:  namespace,
			UserID:     userId,
			HTTPClient: httpClient,
		}
		errInput := usersService.PublicValidateUserByUserIDAndPasswordV3Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	PublicValidateUserByUserIDAndPasswordV3Cmd.Flags().String("password", "", "Password")
	_ = PublicValidateUserByUserIDAndPasswordV3Cmd.MarkFlagRequired("password")
	PublicValidateUserByUserIDAndPasswordV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicValidateUserByUserIDAndPasswordV3Cmd.MarkFlagRequired("namespace")
	PublicValidateUserByUserIDAndPasswordV3Cmd.Flags().String("userId", "", "User id")
	_ = PublicValidateUserByUserIDAndPasswordV3Cmd.MarkFlagRequired("userId")
}
