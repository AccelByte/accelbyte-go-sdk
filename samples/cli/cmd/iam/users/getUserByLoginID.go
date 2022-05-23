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

// GetUserByLoginIDCmd represents the GetUserByLoginID command
var GetUserByLoginIDCmd = &cobra.Command{
	Use:   "getUserByLoginID",
	Short: "Get user by login ID",
	Long:  `Get user by login ID`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		loginId, _ := cmd.Flags().GetString("loginId")
		input := &users.GetUserByLoginIDParams{
			Namespace: namespace,
			LoginID:   &loginId,
		}
		ok, err := usersService.GetUserByLoginIDShort(input)
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
	GetUserByLoginIDCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserByLoginIDCmd.MarkFlagRequired("namespace")
	GetUserByLoginIDCmd.Flags().String("loginId", "", "Login id")
}
