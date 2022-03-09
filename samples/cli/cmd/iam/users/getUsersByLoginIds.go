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
)

// GetUsersByLoginIdsCmd represents the GetUsersByLoginIds command
var GetUsersByLoginIdsCmd = &cobra.Command{
	Use:   "getUsersByLoginIds",
	Short: "Get users by login ids",
	Long:  `Get users by login ids`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		loginIds, _ := cmd.Flags().GetString("loginIds")
		input := &users.GetUsersByLoginIdsParams{
			Namespace: namespace,
			LoginIds:  &loginIds,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.GetUsersByLoginIds(input)
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
	GetUsersByLoginIdsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetUsersByLoginIdsCmd.MarkFlagRequired("namespace")
	GetUsersByLoginIdsCmd.Flags().StringP("loginIds", "", "", "Login ids")
}
