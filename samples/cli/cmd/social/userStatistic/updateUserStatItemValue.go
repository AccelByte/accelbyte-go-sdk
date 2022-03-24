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

// UpdateUserStatItemValueCmd represents the UpdateUserStatItemValue command
var UpdateUserStatItemValueCmd = &cobra.Command{
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
		ok, err := userStatisticService.UpdateUserStatItemValueShort(input)
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
	UpdateUserStatItemValueCmd.Flags().StringP("body", "", "", "Body")
	UpdateUserStatItemValueCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = UpdateUserStatItemValueCmd.MarkFlagRequired("namespace")
	UpdateUserStatItemValueCmd.Flags().StringP("statCode", "", "", "Stat code")
	_ = UpdateUserStatItemValueCmd.MarkFlagRequired("statCode")
	UpdateUserStatItemValueCmd.Flags().StringP("userId", "", "", "User id")
	_ = UpdateUserStatItemValueCmd.MarkFlagRequired("userId")
	UpdateUserStatItemValueCmd.Flags().StringP("additionalKey", "", "", "Additional key")
}
