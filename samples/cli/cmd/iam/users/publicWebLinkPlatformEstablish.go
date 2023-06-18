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

// PublicWebLinkPlatformEstablishCmd represents the PublicWebLinkPlatformEstablish command
var PublicWebLinkPlatformEstablishCmd = &cobra.Command{
	Use:   "publicWebLinkPlatformEstablish",
	Short: "Public web link platform establish",
	Long:  `Public web link platform establish`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		state, _ := cmd.Flags().GetString("state")
		code, _ := cmd.Flags().GetString("code")
		httpClient := &http.Client{
			CheckRedirect: func(req *http.Request, via []*http.Request) error {
				return http.ErrUseLastResponse
			},
		}
		input := &users.PublicWebLinkPlatformEstablishParams{
			Namespace:  namespace,
			PlatformID: platformId,
			Code:       &code,
			State:      state,
			HTTPClient: httpClient,
		}
		_, errFound := usersService.PublicWebLinkPlatformEstablishShort(input)
		if errFound != nil {
			logrus.Error(errFound)

			return errFound
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	PublicWebLinkPlatformEstablishCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicWebLinkPlatformEstablishCmd.MarkFlagRequired("namespace")
	PublicWebLinkPlatformEstablishCmd.Flags().String("platformId", "", "Platform id")
	_ = PublicWebLinkPlatformEstablishCmd.MarkFlagRequired("platformId")
	PublicWebLinkPlatformEstablishCmd.Flags().String("code", "", "Code")
	PublicWebLinkPlatformEstablishCmd.Flags().String("state", "", "State")
	_ = PublicWebLinkPlatformEstablishCmd.MarkFlagRequired("state")
}
