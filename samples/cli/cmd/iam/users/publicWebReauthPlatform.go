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

// PublicWebReauthPlatformCmd represents the PublicWebReauthPlatform command
var PublicWebReauthPlatformCmd = &cobra.Command{
	Use:   "publicWebReauthPlatform",
	Short: "Public web reauth platform",
	Long:  `Public web reauth platform`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		operation, _ := cmd.Flags().GetString("operation")
		clientId, _ := cmd.Flags().GetString("clientId")
		redirectUri, _ := cmd.Flags().GetString("redirectUri")
		input := &users.PublicWebReauthPlatformParams{
			Namespace:   namespace,
			PlatformID:  platformId,
			ClientID:    &clientId,
			RedirectURI: &redirectUri,
			Operation:   operation,
		}
		ok, errOK := usersService.PublicWebReauthPlatformShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicWebReauthPlatformCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicWebReauthPlatformCmd.MarkFlagRequired("namespace")
	PublicWebReauthPlatformCmd.Flags().String("platformId", "", "Platform id")
	_ = PublicWebReauthPlatformCmd.MarkFlagRequired("platformId")
	PublicWebReauthPlatformCmd.Flags().String("clientId", "", "Client id")
	PublicWebReauthPlatformCmd.Flags().String("redirectUri", "", "Redirect uri")
	PublicWebReauthPlatformCmd.Flags().String("operation", "", "Operation")
	_ = PublicWebReauthPlatformCmd.MarkFlagRequired("operation")
}
