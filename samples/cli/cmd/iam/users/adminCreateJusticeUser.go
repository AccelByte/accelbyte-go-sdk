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

// AdminCreateJusticeUserCmd represents the AdminCreateJusticeUser command
var AdminCreateJusticeUserCmd = &cobra.Command{
	Use:   "adminCreateJusticeUser",
	Short: "Admin create justice user",
	Long:  `Admin create justice user`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		targetNamespace, _ := cmd.Flags().GetString("targetNamespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminCreateJusticeUserParams{
			Namespace:       namespace,
			TargetNamespace: targetNamespace,
			UserID:          userId,
		}
		ok, err := usersService.AdminCreateJusticeUserShort(input)
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
	AdminCreateJusticeUserCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminCreateJusticeUserCmd.MarkFlagRequired("namespace")
	AdminCreateJusticeUserCmd.Flags().String("targetNamespace", "", "Target namespace")
	_ = AdminCreateJusticeUserCmd.MarkFlagRequired("targetNamespace")
	AdminCreateJusticeUserCmd.Flags().String("userId", "", "User id")
	_ = AdminCreateJusticeUserCmd.MarkFlagRequired("userId")
}
