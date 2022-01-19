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

// publicPlatformLinkV3Cmd represents the publicPlatformLinkV3 command
var publicPlatformLinkV3Cmd = &cobra.Command{
	Use:   "publicPlatformLinkV3",
	Short: "Public platform link V3",
	Long:  `Public platform link V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		ticket, _ := cmd.Flags().GetString("ticket")
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		redirectUri, _ := cmd.Flags().GetString("redirectUri")
		input := &users.PublicPlatformLinkV3Params{
			RedirectURI: &redirectUri,
			Ticket:      ticket,
			Namespace:   namespace,
			PlatformID:  platformId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := usersService.PublicPlatformLinkV3(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicPlatformLinkV3Cmd)
	publicPlatformLinkV3Cmd.Flags().StringP("redirectUri", "r", " ", "Redirect uri")
	publicPlatformLinkV3Cmd.Flags().StringP("ticket", "t", " ", "Ticket")
	_ = publicPlatformLinkV3Cmd.MarkFlagRequired("ticket")
	publicPlatformLinkV3Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicPlatformLinkV3Cmd.MarkFlagRequired("namespace")
	publicPlatformLinkV3Cmd.Flags().StringP("platformId", "p", " ", "Platform id")
	_ = publicPlatformLinkV3Cmd.MarkFlagRequired("platformId")
}
