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
		errNoContent := usersService.PlatformLinkShort(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PlatformLinkCmd.Flags().String("ticket", "", "Ticket")
	_ = PlatformLinkCmd.MarkFlagRequired("ticket")
	PlatformLinkCmd.Flags().String("namespace", "", "Namespace")
	_ = PlatformLinkCmd.MarkFlagRequired("namespace")
	PlatformLinkCmd.Flags().String("platformId", "", "Platform id")
	_ = PlatformLinkCmd.MarkFlagRequired("platformId")
	PlatformLinkCmd.Flags().String("userId", "", "User id")
	_ = PlatformLinkCmd.MarkFlagRequired("userId")
}
