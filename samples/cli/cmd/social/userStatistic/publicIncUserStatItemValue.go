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

// PublicIncUserStatItemValueCmd represents the PublicIncUserStatItemValue command
var PublicIncUserStatItemValueCmd = &cobra.Command{
	Use:   "publicIncUserStatItemValue",
	Short: "Public inc user stat item value",
	Long:  `Public inc user stat item value`,
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
		input := &user_statistic.PublicIncUserStatItemValueParams{
			Body:      body,
			Namespace: namespace,
			StatCode:  statCode,
			UserID:    userId,
		}
		ok, err := userStatisticService.PublicIncUserStatItemValueShort(input)
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
	PublicIncUserStatItemValueCmd.Flags().StringP("body", "", "", "Body")
	PublicIncUserStatItemValueCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = PublicIncUserStatItemValueCmd.MarkFlagRequired("namespace")
	PublicIncUserStatItemValueCmd.Flags().StringP("statCode", "", "", "Stat code")
	_ = PublicIncUserStatItemValueCmd.MarkFlagRequired("statCode")
	PublicIncUserStatItemValueCmd.Flags().StringP("userId", "", "", "User id")
	_ = PublicIncUserStatItemValueCmd.MarkFlagRequired("userId")
}
