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

// PlatformLinkCmd represents the PlatformLink command
var PlatformLinkCmd = &cobra.Command{
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
	PlatformLinkCmd.Flags().StringP("ticket", "", " ", "Ticket")
	_ = PlatformLinkCmd.MarkFlagRequired("ticket")
	PlatformLinkCmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = PlatformLinkCmd.MarkFlagRequired("namespace")
	PlatformLinkCmd.Flags().StringP("platformId", "", " ", "Platform id")
	_ = PlatformLinkCmd.MarkFlagRequired("platformId")
	PlatformLinkCmd.Flags().StringP("userId", "", " ", "User id")
	_ = PlatformLinkCmd.MarkFlagRequired("userId")
}
