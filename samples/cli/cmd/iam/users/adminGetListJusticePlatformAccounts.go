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

// AdminGetListJusticePlatformAccountsCmd represents the AdminGetListJusticePlatformAccounts command
var AdminGetListJusticePlatformAccountsCmd = &cobra.Command{
	Use:   "adminGetListJusticePlatformAccounts",
	Short: "Admin get list justice platform accounts",
	Long:  `Admin get list justice platform accounts`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.AdminGetListJusticePlatformAccountsParams{
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := usersService.AdminGetListJusticePlatformAccountsShort(input)
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
	AdminGetListJusticePlatformAccountsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminGetListJusticePlatformAccountsCmd.MarkFlagRequired("namespace")
	AdminGetListJusticePlatformAccountsCmd.Flags().StringP("userId", "", "", "User id")
	_ = AdminGetListJusticePlatformAccountsCmd.MarkFlagRequired("userId")
}
