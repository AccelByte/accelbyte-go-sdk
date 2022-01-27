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

// AdminCreateJusticeUserCmd represents the AdminCreateJusticeUser command
var AdminCreateJusticeUserCmd = &cobra.Command{
	Use:   "AdminCreateJusticeUser",
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.AdminCreateJusticeUser(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	AdminCreateJusticeUserCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = AdminCreateJusticeUserCmd.MarkFlagRequired("namespace")
	AdminCreateJusticeUserCmd.Flags().StringP("targetNamespace", "te", " ", "Target namespace")
	_ = AdminCreateJusticeUserCmd.MarkFlagRequired("targetNamespace")
	AdminCreateJusticeUserCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = AdminCreateJusticeUserCmd.MarkFlagRequired("userId")
}
