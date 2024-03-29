// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userStatistic

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/user_statistic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteUserStatItems1Cmd represents the DeleteUserStatItems1 command
var DeleteUserStatItems1Cmd = &cobra.Command{
	Use:   "deleteUserStatItems1",
	Short: "Delete user stat items 1",
	Long:  `Delete user stat items 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		statCode, _ := cmd.Flags().GetString("statCode")
		userId, _ := cmd.Flags().GetString("userId")
		input := &user_statistic.DeleteUserStatItems1Params{
			Namespace: namespace,
			StatCode:  statCode,
			UserID:    userId,
		}
		errNoContent := userStatisticService.DeleteUserStatItems1Short(input)
		if errNoContent != nil {
			logrus.Error(errNoContent)

			return errNoContent
		}

		logrus.Infof("Response CLI success.")

		return nil
	},
}

func init() {
	DeleteUserStatItems1Cmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteUserStatItems1Cmd.MarkFlagRequired("namespace")
	DeleteUserStatItems1Cmd.Flags().String("statCode", "", "Stat code")
	_ = DeleteUserStatItems1Cmd.MarkFlagRequired("statCode")
	DeleteUserStatItems1Cmd.Flags().String("userId", "", "User id")
	_ = DeleteUserStatItems1Cmd.MarkFlagRequired("userId")
}
