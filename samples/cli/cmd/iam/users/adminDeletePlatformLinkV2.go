// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package users

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminDeletePlatformLinkV2Cmd represents the adminDeletePlatformLinkV2 command
var adminDeletePlatformLinkV2Cmd = &cobra.Command{
	Use:   "adminDeletePlatformLinkV2",
	Short: "Admin delete platform link V2",
	Long:  `Admin delete platform link V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		userId, _ := cmd.Flags().GetString("userId")
		platformNamespace, _ := cmd.Flags().GetString("platformNamespace")
		input := &users.AdminDeletePlatformLinkV2Params{
			PlatformNamespace: &platformNamespace,
			Namespace:         namespace,
			PlatformID:        platformId,
			UserID:            userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := usersService.AdminDeletePlatformLinkV2(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminDeletePlatformLinkV2Cmd)
	adminDeletePlatformLinkV2Cmd.Flags().StringP("platform_namespace", "pe", " ", "Platform namespace")
	adminDeletePlatformLinkV2Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = adminDeletePlatformLinkV2Cmd.MarkFlagRequired("namespace")
	adminDeletePlatformLinkV2Cmd.Flags().StringP("platformId", "pd", " ", "Platform id")
	_ = adminDeletePlatformLinkV2Cmd.MarkFlagRequired("platformId")
	adminDeletePlatformLinkV2Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = adminDeletePlatformLinkV2Cmd.MarkFlagRequired("userId")
}
