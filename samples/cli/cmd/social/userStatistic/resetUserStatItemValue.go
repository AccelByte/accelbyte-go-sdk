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

// ResetUserStatItemValueCmd represents the ResetUserStatItemValue command
var ResetUserStatItemValueCmd = &cobra.Command{
	Use:   "resetUserStatItemValue",
	Short: "Reset user stat item value",
	Long:  `Reset user stat item value`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *socialclientmodels.StatResetInfo
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		statCode, _ := cmd.Flags().GetString("statCode")
		userId, _ := cmd.Flags().GetString("userId")
		additionalKey, _ := cmd.Flags().GetString("additionalKey")
		input := &user_statistic.ResetUserStatItemValueParams{
			Body:          body,
			Namespace:     namespace,
			StatCode:      statCode,
			UserID:        userId,
			AdditionalKey: &additionalKey,
		}
		ok, errOK := userStatisticService.ResetUserStatItemValueShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ResetUserStatItemValueCmd.Flags().String("body", "", "Body")
	_ = ResetUserStatItemValueCmd.MarkFlagRequired("body")
	ResetUserStatItemValueCmd.Flags().String("namespace", "", "Namespace")
	_ = ResetUserStatItemValueCmd.MarkFlagRequired("namespace")
	ResetUserStatItemValueCmd.Flags().String("statCode", "", "Stat code")
	_ = ResetUserStatItemValueCmd.MarkFlagRequired("statCode")
	ResetUserStatItemValueCmd.Flags().String("userId", "", "User id")
	_ = ResetUserStatItemValueCmd.MarkFlagRequired("userId")
	ResetUserStatItemValueCmd.Flags().String("additionalKey", "", "Additional key")
}
