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

// DeleteUserStatItemsCmd represents the DeleteUserStatItems command
var DeleteUserStatItemsCmd = &cobra.Command{
	Use:   "deleteUserStatItems",
	Short: "Delete user stat items",
	Long:  `Delete user stat items`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		statCode, _ := cmd.Flags().GetString("statCode")
		userId, _ := cmd.Flags().GetString("userId")
		input := &user_statistic.DeleteUserStatItemsParams{
			Namespace: namespace,
			StatCode:  statCode,
			UserID:    userId,
		}
		errInput := userStatisticService.DeleteUserStatItemsShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DeleteUserStatItemsCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = DeleteUserStatItemsCmd.MarkFlagRequired("namespace")
	DeleteUserStatItemsCmd.Flags().StringP("statCode", "", "", "Stat code")
	_ = DeleteUserStatItemsCmd.MarkFlagRequired("statCode")
	DeleteUserStatItemsCmd.Flags().StringP("userId", "", "", "User id")
	_ = DeleteUserStatItemsCmd.MarkFlagRequired("userId")
}
