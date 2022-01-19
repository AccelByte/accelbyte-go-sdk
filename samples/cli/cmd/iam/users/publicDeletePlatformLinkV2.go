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

// publicDeletePlatformLinkV2Cmd represents the publicDeletePlatformLinkV2 command
var publicDeletePlatformLinkV2Cmd = &cobra.Command{
	Use:   "publicDeletePlatformLinkV2",
	Short: "Public delete platform link V2",
	Long:  `Public delete platform link V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		userId, _ := cmd.Flags().GetString("userId")
		platformNamespace, _ := cmd.Flags().GetString("platformNamespace")
		input := &users.PublicDeletePlatformLinkV2Params{
			PlatformNamespace: &platformNamespace,
			Namespace:         namespace,
			PlatformID:        platformId,
			UserID:            userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := usersService.PublicDeletePlatformLinkV2(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicDeletePlatformLinkV2Cmd)
	publicDeletePlatformLinkV2Cmd.Flags().StringP("platform_namespace", "p", " ", "Platform namespace")
	publicDeletePlatformLinkV2Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicDeletePlatformLinkV2Cmd.MarkFlagRequired("namespace")
	publicDeletePlatformLinkV2Cmd.Flags().StringP("platformId", "p", " ", "Platform id")
	_ = publicDeletePlatformLinkV2Cmd.MarkFlagRequired("platformId")
	publicDeletePlatformLinkV2Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = publicDeletePlatformLinkV2Cmd.MarkFlagRequired("userId")
}
