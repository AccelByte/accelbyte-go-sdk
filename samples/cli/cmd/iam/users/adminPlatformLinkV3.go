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

// adminPlatformLinkV3Cmd represents the adminPlatformLinkV3 command
var adminPlatformLinkV3Cmd = &cobra.Command{
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
	cmd.RootCmd.AddCommand(adminPlatformLinkV3Cmd)
	adminPlatformLinkV3Cmd.Flags().StringP("ticket", "t", " ", "Ticket")
	_ = adminPlatformLinkV3Cmd.MarkFlagRequired("ticket")
	adminPlatformLinkV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminPlatformLinkV3Cmd.MarkFlagRequired("namespace")
	adminPlatformLinkV3Cmd.Flags().StringP("platformId", "p", " ", "Platform id")
	_ = adminPlatformLinkV3Cmd.MarkFlagRequired("platformId")
	adminPlatformLinkV3Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = adminPlatformLinkV3Cmd.MarkFlagRequired("userId")
}
