// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/user_statistic"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicCreateUserStatItemCmd represents the publicCreateUserStatItem command
var publicCreateUserStatItemCmd = &cobra.Command{
	Use:   "publicCreateUserStatItem",
	Short: "Public create user stat item",
	Long:  `Public create user stat item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		statCode, _ := cmd.Flags().GetString("statCode")
		userId, _ := cmd.Flags().GetString("userId")
		input := &user_statistic.PublicCreateUserStatItemParams{
			Namespace: namespace,
			StatCode:  statCode,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := userStatisticService.PublicCreateUserStatItem(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicCreateUserStatItemCmd)
	publicCreateUserStatItemCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicCreateUserStatItemCmd.MarkFlagRequired("namespace")
	publicCreateUserStatItemCmd.Flags().StringP("statCode", "s", " ", "Stat code")
	_ = publicCreateUserStatItemCmd.MarkFlagRequired("statCode")
	publicCreateUserStatItemCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = publicCreateUserStatItemCmd.MarkFlagRequired("userId")
}