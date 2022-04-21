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

// PublicWebLinkPlatformCmd represents the PublicWebLinkPlatform command
var PublicWebLinkPlatformCmd = &cobra.Command{
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
		ok, err := usersService.PublicWebLinkPlatformShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	PublicWebLinkPlatformCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicWebLinkPlatformCmd.MarkFlagRequired("namespace")
	PublicWebLinkPlatformCmd.Flags().StringP("platformId", "", "", "Platform id")
	_ = PublicWebLinkPlatformCmd.MarkFlagRequired("platformId")
	PublicWebLinkPlatformCmd.Flags().StringP("clientId", "", "", "Client id")
	PublicWebLinkPlatformCmd.Flags().StringP("redirectUri", "", "", "Redirect uri")
}
