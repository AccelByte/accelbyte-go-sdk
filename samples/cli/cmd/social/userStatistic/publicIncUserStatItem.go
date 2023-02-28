// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package userStatistic

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/social"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclient/user_statistic"
	"github.com/AccelByte/accelbyte-go-sdk/social-sdk/pkg/socialclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicIncUserStatItemCmd represents the PublicIncUserStatItem command
var PublicIncUserStatItemCmd = &cobra.Command{
	Use:   "publicIncUserStatItem",
	Short: "Public inc user stat item",
	Long:  `Public inc user stat item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		statCode, _ := cmd.Flags().GetString("statCode")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *socialclientmodels.StatItemInc
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &user_statistic.PublicIncUserStatItemParams{
			Body:      body,
			Namespace: namespace,
			StatCode:  statCode,
			UserID:    userId,
		}
		ok, errOK := userStatisticService.PublicIncUserStatItemShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicIncUserStatItemCmd.Flags().String("body", "", "Body")
	PublicIncUserStatItemCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicIncUserStatItemCmd.MarkFlagRequired("namespace")
	PublicIncUserStatItemCmd.Flags().String("statCode", "", "Stat code")
	_ = PublicIncUserStatItemCmd.MarkFlagRequired("statCode")
	PublicIncUserStatItemCmd.Flags().String("userId", "", "User id")
	_ = PublicIncUserStatItemCmd.MarkFlagRequired("userId")
}
