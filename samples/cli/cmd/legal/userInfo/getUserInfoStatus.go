// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userInfo

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/user_info"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetUserInfoStatusCmd represents the GetUserInfoStatus command
var GetUserInfoStatusCmd = &cobra.Command{
	Use:   "getUserInfoStatus",
	Short: "Get user info status",
	Long:  `Get user info status`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userInfoService := &legal.UserInfoService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespaces, _ := cmd.Flags().GetString("namespaces")
		input := &user_info.GetUserInfoStatusParams{
			Namespaces: &namespaces,
		}
		ok, err := userInfoService.GetUserInfoStatusShort(input)
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
	GetUserInfoStatusCmd.Flags().String("namespaces", "", "Namespaces")
}
