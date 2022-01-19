// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/user_info"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// invalidateUserInfoCacheCmd represents the invalidateUserInfoCache command
var invalidateUserInfoCacheCmd = &cobra.Command{
	Use:   "invalidateUserInfoCache",
	Short: "Invalidate user info cache",
	Long:  `Invalidate user info cache`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userInfoService := &legal.UserInfoService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &user_info.InvalidateUserInfoCacheParams{
			Namespace: &namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := userInfoService.InvalidateUserInfoCache(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(invalidateUserInfoCacheCmd)
	invalidateUserInfoCacheCmd.Flags().StringP("namespace", "n", " ", "Namespace")
}
