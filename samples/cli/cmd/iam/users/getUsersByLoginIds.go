// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package users

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getUsersByLoginIdsCmd represents the getUsersByLoginIds command
var getUsersByLoginIdsCmd = &cobra.Command{
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
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getUsersByLoginIdsCmd)
	getUsersByLoginIdsCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getUsersByLoginIdsCmd.MarkFlagRequired("namespace")
	getUsersByLoginIdsCmd.Flags().StringP("loginIds", "ls", " ", "Login ids")
}
