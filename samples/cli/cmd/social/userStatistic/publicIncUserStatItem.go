// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userStatisticService.PublicIncUserStatItem(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	PublicIncUserStatItemCmd.Flags().StringP("body", "", "", "Body")
	PublicIncUserStatItemCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicIncUserStatItemCmd.MarkFlagRequired("namespace")
	PublicIncUserStatItemCmd.Flags().StringP("statCode", "", "", "Stat code")
	_ = PublicIncUserStatItemCmd.MarkFlagRequired("statCode")
	PublicIncUserStatItemCmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicIncUserStatItemCmd.MarkFlagRequired("userId")
}
