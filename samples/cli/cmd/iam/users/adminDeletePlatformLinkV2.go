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

// AdminDeletePlatformLinkV2Cmd represents the AdminDeletePlatformLinkV2 command
var AdminDeletePlatformLinkV2Cmd = &cobra.Command{
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
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &users.AdminDeletePlatformLinkV2Params{
			PlatformNamespace: &platformNamespace,
			Namespace:         namespace,
			PlatformID:        platformId,
			UserID:            userId,
			HTTPClient:        httpClient,
		}
		errInput := usersService.AdminDeletePlatformLinkV2Short(input, nil)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminDeletePlatformLinkV2Cmd.Flags().StringP("platformNamespace", "", "", "Platform namespace")
	AdminDeletePlatformLinkV2Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminDeletePlatformLinkV2Cmd.MarkFlagRequired("namespace")
	AdminDeletePlatformLinkV2Cmd.Flags().StringP("platformId", "", "", "Platform id")
	_ = AdminDeletePlatformLinkV2Cmd.MarkFlagRequired("platformId")
	AdminDeletePlatformLinkV2Cmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminDeletePlatformLinkV2Cmd.MarkFlagRequired("userId")
}
