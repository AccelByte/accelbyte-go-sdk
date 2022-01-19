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

// platformLinkCmd represents the platformLink command
var platformLinkCmd = &cobra.Command{
	Use:   "platformLink",
	Short: "Platform link",
	Long:  `Platform link`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		ticket, _ := cmd.Flags().GetString("ticket")
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.PlatformLinkParams{
			Ticket:     ticket,
			Namespace:  namespace,
			PlatformID: platformId,
			UserID:     userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := usersService.PlatformLink(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(platformLinkCmd)
	platformLinkCmd.Flags().StringP("ticket", "t", " ", "Ticket")
	_ = platformLinkCmd.MarkFlagRequired("ticket")
	platformLinkCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = platformLinkCmd.MarkFlagRequired("namespace")
	platformLinkCmd.Flags().StringP("platformId", "p", " ", "Platform id")
	_ = platformLinkCmd.MarkFlagRequired("platformId")
	platformLinkCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = platformLinkCmd.MarkFlagRequired("userId")
}
