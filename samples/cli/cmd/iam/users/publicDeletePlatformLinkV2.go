// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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

// PublicDeletePlatformLinkV2Cmd represents the PublicDeletePlatformLinkV2 command
var PublicDeletePlatformLinkV2Cmd = &cobra.Command{
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
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &users.PublicDeletePlatformLinkV2Params{
			PlatformNamespace: &platformNamespace,
			Namespace:         namespace,
			PlatformID:        platformId,
			UserID:            userId,
			HTTPClient:        httpClient,
		}
		errInput := usersService.PublicDeletePlatformLinkV2Short(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	PublicDeletePlatformLinkV2Cmd.Flags().StringP("platformNamespace", "", "", "Platform namespace")
	PublicDeletePlatformLinkV2Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicDeletePlatformLinkV2Cmd.MarkFlagRequired("namespace")
	PublicDeletePlatformLinkV2Cmd.Flags().StringP("platformId", "", "", "Platform id")
	_ = PublicDeletePlatformLinkV2Cmd.MarkFlagRequired("platformId")
	PublicDeletePlatformLinkV2Cmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicDeletePlatformLinkV2Cmd.MarkFlagRequired("userId")
}
