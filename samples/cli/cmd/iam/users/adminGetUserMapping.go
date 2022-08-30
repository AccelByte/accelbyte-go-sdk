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

// AdminGetUserMappingCmd represents the AdminGetUserMapping command
var AdminGetUserMappingCmd = &cobra.Command{
	Use:   "adminGetUserMapping",
	Short: "Admin get user mapping",
	Long:  `Admin get user mapping`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		targetNamespace, _ := cmd.Flags().GetString("targetNamespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminGetUserMappingParams{
			Namespace:       namespace,
			TargetNamespace: targetNamespace,
			UserID:          userId,
		}
		ok, err := usersService.AdminGetUserMappingShort(input)
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
	AdminGetUserMappingCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetUserMappingCmd.MarkFlagRequired("namespace")
	AdminGetUserMappingCmd.Flags().String("targetNamespace", "", "Target namespace")
	_ = AdminGetUserMappingCmd.MarkFlagRequired("targetNamespace")
	AdminGetUserMappingCmd.Flags().String("userId", "", "User id")
	_ = AdminGetUserMappingCmd.MarkFlagRequired("userId")
}
