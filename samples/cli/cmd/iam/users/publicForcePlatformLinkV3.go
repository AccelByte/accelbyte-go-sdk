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

// PublicForcePlatformLinkV3Cmd represents the PublicForcePlatformLinkV3 command
var PublicForcePlatformLinkV3Cmd = &cobra.Command{
	Use:   "publicForcePlatformLinkV3",
	Short: "Public force platform link V3",
	Long:  `Public force platform link V3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		ticket, _ := cmd.Flags().GetString("ticket")
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &users.PublicForcePlatformLinkV3Params{
			Ticket:     ticket,
			Namespace:  namespace,
			PlatformID: platformId,
			HTTPClient: httpClient,
		}
		errInput := usersService.PublicForcePlatformLinkV3Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	PublicForcePlatformLinkV3Cmd.Flags().String("ticket", "", "Ticket")
	_ = PublicForcePlatformLinkV3Cmd.MarkFlagRequired("ticket")
	PublicForcePlatformLinkV3Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicForcePlatformLinkV3Cmd.MarkFlagRequired("namespace")
	PublicForcePlatformLinkV3Cmd.Flags().String("platformId", "", "Platform id")
	_ = PublicForcePlatformLinkV3Cmd.MarkFlagRequired("platformId")
}
