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

// PlatformUnlinkCmd represents the PlatformUnlink command
var PlatformUnlinkCmd = &cobra.Command{
	Use:   "platformUnlink",
	Short: "Platform unlink",
	Long:  `Platform unlink`,
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
		input := &users.PlatformUnlinkParams{
			PlatformNamespace: &platformNamespace,
			Namespace:         namespace,
			PlatformID:        platformId,
			UserID:            userId,
			HTTPClient:        httpClient,
		}
		errInput := usersService.PlatformUnlinkShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	PlatformUnlinkCmd.Flags().StringP("platformNamespace", "", "", "Platform namespace")
	PlatformUnlinkCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PlatformUnlinkCmd.MarkFlagRequired("namespace")
	PlatformUnlinkCmd.Flags().StringP("platformId", "", "", "Platform id")
	_ = PlatformUnlinkCmd.MarkFlagRequired("platformId")
	PlatformUnlinkCmd.Flags().StringP("userId", "", "", "User id")
	_ = PlatformUnlinkCmd.MarkFlagRequired("userId")
}
