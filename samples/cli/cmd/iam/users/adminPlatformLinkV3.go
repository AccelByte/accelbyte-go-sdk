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

// AdminPlatformLinkV3Cmd represents the AdminPlatformLinkV3 command
var AdminPlatformLinkV3Cmd = &cobra.Command{
	Use:   "adminPlatformLinkV3",
	Short: "Admin platform link V3",
	Long:  `Admin platform link V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		ticket, _ := cmd.Flags().GetString("ticket")
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminPlatformLinkV3Params{
			Ticket:     ticket,
			Namespace:  namespace,
			PlatformID: platformId,
			UserID:     userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := usersService.AdminPlatformLinkV3(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	AdminPlatformLinkV3Cmd.Flags().StringP("ticket", "", "", "Ticket")
	_ = AdminPlatformLinkV3Cmd.MarkFlagRequired("ticket")
	AdminPlatformLinkV3Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminPlatformLinkV3Cmd.MarkFlagRequired("namespace")
	AdminPlatformLinkV3Cmd.Flags().StringP("platformId", "", "", "Platform id")
	_ = AdminPlatformLinkV3Cmd.MarkFlagRequired("platformId")
	AdminPlatformLinkV3Cmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminPlatformLinkV3Cmd.MarkFlagRequired("userId")
}
