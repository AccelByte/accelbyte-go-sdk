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

// DeleteUserStatItems2Cmd represents the DeleteUserStatItems2 command
var DeleteUserStatItems2Cmd = &cobra.Command{
	Use:   "deleteUserStatItems2",
	Short: "Delete user stat items 2",
	Long:  `Delete user stat items 2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		statCode, _ := cmd.Flags().GetString("statCode")
		userId, _ := cmd.Flags().GetString("userId")
		additionalKey, _ := cmd.Flags().GetString("additionalKey")
		input := &user_statistic.DeleteUserStatItems2Params{
			Namespace:     namespace,
			StatCode:      statCode,
			UserID:        userId,
			AdditionalKey: &additionalKey,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		errInput := userStatisticService.DeleteUserStatItems2(input)
		if errInput != nil {
			logrus.Error(errInput)
			return errInput
		}
		return nil
	},
}

func init() {
	DeleteUserStatItems2Cmd.Flags().StringP("namespace", "", " ", "Namespace")
	_ = DeleteUserStatItems2Cmd.MarkFlagRequired("namespace")
	DeleteUserStatItems2Cmd.Flags().StringP("statCode", "", " ", "Stat code")
	_ = DeleteUserStatItems2Cmd.MarkFlagRequired("statCode")
	DeleteUserStatItems2Cmd.Flags().StringP("userId", "", " ", "User id")
	_ = DeleteUserStatItems2Cmd.MarkFlagRequired("userId")
	DeleteUserStatItems2Cmd.Flags().StringP("additionalKey", "", " ", "Additional key")
}
