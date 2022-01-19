// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/iam"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getUserJusticePlatformAccountCmd represents the getUserJusticePlatformAccount command
var getUserJusticePlatformAccountCmd = &cobra.Command{
	Use:   "getUserJusticePlatformAccount",
	Short: "Get user justice platform account",
	Long:  `Get user justice platform account`,
	RunE: func(cmd *cobra.Command, args []string) error {
		usersService := &iam.UsersService{
			Client:          factory.NewIamClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		targetNamespace, _ := cmd.Flags().GetString("targetNamespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &users.GetUserJusticePlatformAccountParams{
			Namespace:       namespace,
			TargetNamespace: targetNamespace,
			UserID:          userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := usersService.GetUserJusticePlatformAccount(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getUserJusticePlatformAccountCmd)
	getUserJusticePlatformAccountCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = getUserJusticePlatformAccountCmd.MarkFlagRequired("namespace")
	getUserJusticePlatformAccountCmd.Flags().StringP("targetNamespace", "t", " ", "Target namespace")
	_ = getUserJusticePlatformAccountCmd.MarkFlagRequired("targetNamespace")
	getUserJusticePlatformAccountCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = getUserJusticePlatformAccountCmd.MarkFlagRequired("userId")
}
