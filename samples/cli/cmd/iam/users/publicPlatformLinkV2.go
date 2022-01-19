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

// publicPlatformLinkV2Cmd represents the publicPlatformLinkV2 command
var publicPlatformLinkV2Cmd = &cobra.Command{
	Use:   "publicPlatformLinkV2",
	Short: "Public platform link V2",
	Long:  `Public platform link V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		ticket, _ := cmd.Flags().GetString("ticket")
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.PublicPlatformLinkV2Params{
			Ticket:     ticket,
			Namespace:  namespace,
			PlatformID: platformId,
			UserID:     userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := usersService.PublicPlatformLinkV2(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicPlatformLinkV2Cmd)
	publicPlatformLinkV2Cmd.Flags().StringP("ticket", "t", " ", "Ticket")
	_ = publicPlatformLinkV2Cmd.MarkFlagRequired("ticket")
	publicPlatformLinkV2Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicPlatformLinkV2Cmd.MarkFlagRequired("namespace")
	publicPlatformLinkV2Cmd.Flags().StringP("platformId", "p", " ", "Platform id")
	_ = publicPlatformLinkV2Cmd.MarkFlagRequired("platformId")
	publicPlatformLinkV2Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = publicPlatformLinkV2Cmd.MarkFlagRequired("userId")
}
