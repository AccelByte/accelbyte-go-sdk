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

// PublicWebReauthPlatformProcessCmd represents the PublicWebReauthPlatformProcess command
var PublicWebReauthPlatformProcessCmd = &cobra.Command{
	Use:   "publicWebReauthPlatformProcess",
	Short: "Public web reauth platform process",
	Long:  `Public web reauth platform process`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		state, _ := cmd.Flags().GetString("state")
		namespace, _ := cmd.Flags().GetString("namespace")
		platformId, _ := cmd.Flags().GetString("platformId")
		code, _ := cmd.Flags().GetString("code")
		input := &users.PublicWebReauthPlatformProcessParams{
			Code:       &code,
			State:      state,
			Namespace:  namespace,
			PlatformID: platformId,
		}
		ok, errOK := usersService.PublicWebReauthPlatformProcessShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicWebReauthPlatformProcessCmd.Flags().String("code", "", "Code")
	PublicWebReauthPlatformProcessCmd.Flags().String("state", "", "State")
	_ = PublicWebReauthPlatformProcessCmd.MarkFlagRequired("state")
	PublicWebReauthPlatformProcessCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicWebReauthPlatformProcessCmd.MarkFlagRequired("namespace")
	PublicWebReauthPlatformProcessCmd.Flags().String("platformId", "", "Platform id")
	_ = PublicWebReauthPlatformProcessCmd.MarkFlagRequired("platformId")
}
