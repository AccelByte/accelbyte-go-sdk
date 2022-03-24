// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package users

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
	"net/http"
)

// PublicPlatformLinkV2Cmd represents the PublicPlatformLinkV2 command
var PublicPlatformLinkV2Cmd = &cobra.Command{
	Use:   "publicPlatformLinkV2",
	Short: "Public platform link V2",
	Long:  `Public platform link V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		ticket, _ := cmd.Flags().GetString("ticket")
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		userId, _ := cmd.Flags().GetString("userId")
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &users.PublicPlatformLinkV2Params{
			Ticket:     ticket,
			Namespace:  namespace,
			PlatformID: platformId,
			UserID:     userId,
			HTTPClient: httpClient,
		}
		errInput := usersService.PublicPlatformLinkV2Short(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	PublicPlatformLinkV2Cmd.Flags().StringP("ticket", "", "", "Ticket")
	_ = PublicPlatformLinkV2Cmd.MarkFlagRequired("ticket")
	PublicPlatformLinkV2Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicPlatformLinkV2Cmd.MarkFlagRequired("namespace")
	PublicPlatformLinkV2Cmd.Flags().StringP("platformId", "", "", "Platform id")
	_ = PublicPlatformLinkV2Cmd.MarkFlagRequired("platformId")
	PublicPlatformLinkV2Cmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicPlatformLinkV2Cmd.MarkFlagRequired("userId")
}
