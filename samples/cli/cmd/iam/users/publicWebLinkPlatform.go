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

// publicWebLinkPlatformCmd represents the publicWebLinkPlatform command
var publicWebLinkPlatformCmd = &cobra.Command{
	Use:   "publicWebLinkPlatform",
	Short: "Public web link platform",
	Long:  `Public web link platform`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		clientId, _ := cmd.Flags().GetString("clientId")
		redirectUri, _ := cmd.Flags().GetString("redirectUri")
		input := &users.PublicWebLinkPlatformParams{
			Namespace:   namespace,
			PlatformID:  platformId,
			ClientID:    &clientId,
			RedirectURI: &redirectUri,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.PublicWebLinkPlatform(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicWebLinkPlatformCmd)
	publicWebLinkPlatformCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicWebLinkPlatformCmd.MarkFlagRequired("namespace")
	publicWebLinkPlatformCmd.Flags().StringP("platformId", "pd", " ", "Platform id")
	_ = publicWebLinkPlatformCmd.MarkFlagRequired("platformId")
	publicWebLinkPlatformCmd.Flags().StringP("clientId", "cd", " ", "Client id")
	publicWebLinkPlatformCmd.Flags().StringP("redirectUri", "ri", " ", "Redirect uri")
}
