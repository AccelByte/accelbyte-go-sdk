// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package users

import (
	"net/http"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicPlatformLinkV3Cmd represents the PublicPlatformLinkV3 command
var PublicPlatformLinkV3Cmd = &cobra.Command{
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
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &users.PublicPlatformLinkV3Params{
			RedirectURI: &redirectUri,
			Ticket:      ticket,
			Namespace:   namespace,
			PlatformID:  platformId,
			HTTPClient:  httpClient,
		}
		errInput := usersService.PublicPlatformLinkV3Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	PublicPlatformLinkV3Cmd.Flags().String("redirectUri", "", "Redirect uri")
	PublicPlatformLinkV3Cmd.Flags().String("ticket", "", "Ticket")
	_ = PublicPlatformLinkV3Cmd.MarkFlagRequired("ticket")
	PublicPlatformLinkV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicPlatformLinkV3Cmd.MarkFlagRequired("namespace")
	PublicPlatformLinkV3Cmd.Flags().String("platformId", "", "Platform id")
	_ = PublicPlatformLinkV3Cmd.MarkFlagRequired("platformId")
}
