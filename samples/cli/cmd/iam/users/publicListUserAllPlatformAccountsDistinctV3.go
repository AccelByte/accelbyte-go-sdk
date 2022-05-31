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

// PublicListUserAllPlatformAccountsDistinctV3Cmd represents the PublicListUserAllPlatformAccountsDistinctV3 command
var PublicListUserAllPlatformAccountsDistinctV3Cmd = &cobra.Command{
	Use:   "publicListUserAllPlatformAccountsDistinctV3",
	Short: "Public list user all platform accounts distinct V3",
	Long:  `Public list user all platform accounts distinct V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.PublicListUserAllPlatformAccountsDistinctV3Params{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := usersService.PublicListUserAllPlatformAccountsDistinctV3Short(input)
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
	PublicListUserAllPlatformAccountsDistinctV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicListUserAllPlatformAccountsDistinctV3Cmd.MarkFlagRequired("namespace")
	PublicListUserAllPlatformAccountsDistinctV3Cmd.Flags().String("userId", "", "User id")
	_ = PublicListUserAllPlatformAccountsDistinctV3Cmd.MarkFlagRequired("userId")
}
