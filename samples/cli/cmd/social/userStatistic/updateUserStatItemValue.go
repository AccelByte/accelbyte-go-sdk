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
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// updateUserStatItemValueCmd represents the updateUserStatItemValue command
var updateUserStatItemValueCmd = &cobra.Command{
	Use:   "updateUserStatItemValue",
	Short: "Update user stat item value",
	Long:  `Update user stat item value`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		statCode, _ := cmd.Flags().GetString("statCode")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body *socialclientmodels.StatItemUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		additionalKey, _ := cmd.Flags().GetString("additionalKey")
		input := &user_statistic.UpdateUserStatItemValueParams{
			Body:          body,
			Namespace:     namespace,
			StatCode:      statCode,
			UserID:        userId,
			AdditionalKey: &additionalKey,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userStatisticService.UpdateUserStatItemValue(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updateUserStatItemValueCmd)
	updateUserStatItemValueCmd.Flags().StringP("body", "by", " ", "Body")
	updateUserStatItemValueCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = updateUserStatItemValueCmd.MarkFlagRequired("namespace")
	updateUserStatItemValueCmd.Flags().StringP("statCode", "se", " ", "Stat code")
	_ = updateUserStatItemValueCmd.MarkFlagRequired("statCode")
	updateUserStatItemValueCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = updateUserStatItemValueCmd.MarkFlagRequired("userId")
	updateUserStatItemValueCmd.Flags().StringP("additionalKey", "ay", " ", "Additional key")
}
