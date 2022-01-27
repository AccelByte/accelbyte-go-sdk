// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package userStatistic

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/user_statistic"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// resetUserStatItemValue1Cmd represents the resetUserStatItemValue1 command
var resetUserStatItemValue1Cmd = &cobra.Command{
	Use:   "resetUserStatItemValue1",
	Short: "Reset user stat item value 1",
	Long:  `Reset user stat item value 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		statCode, _ := cmd.Flags().GetString("statCode")
		userId, _ := cmd.Flags().GetString("userId")
		input := &user_statistic.ResetUserStatItemValue1Params{
			Namespace: namespace,
			StatCode:  statCode,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userStatisticService.ResetUserStatItemValue1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(resetUserStatItemValue1Cmd)
	resetUserStatItemValue1Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = resetUserStatItemValue1Cmd.MarkFlagRequired("namespace")
	resetUserStatItemValue1Cmd.Flags().StringP("statCode", "se", " ", "Stat code")
	_ = resetUserStatItemValue1Cmd.MarkFlagRequired("statCode")
	resetUserStatItemValue1Cmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = resetUserStatItemValue1Cmd.MarkFlagRequired("userId")
}
