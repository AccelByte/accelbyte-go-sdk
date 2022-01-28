// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package userStatistic

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/user_statistic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// CreateUserStatItemCmd represents the CreateUserStatItem command
var CreateUserStatItemCmd = &cobra.Command{
	Use:   "createUserStatItem",
	Short: "Create user stat item",
	Long:  `Create user stat item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		statCode, _ := cmd.Flags().GetString("statCode")
		userId, _ := cmd.Flags().GetString("userId")
		input := &user_statistic.CreateUserStatItemParams{
			Namespace: namespace,
			StatCode:  statCode,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := userStatisticService.CreateUserStatItem(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	CreateUserStatItemCmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = CreateUserStatItemCmd.MarkFlagRequired("namespace")
	CreateUserStatItemCmd.Flags().StringP("statCode", "", " ", "Stat code")
	_ = CreateUserStatItemCmd.MarkFlagRequired("statCode")
	CreateUserStatItemCmd.Flags().StringP("userId", "", " ", "User id")
	_ = CreateUserStatItemCmd.MarkFlagRequired("userId")
}
