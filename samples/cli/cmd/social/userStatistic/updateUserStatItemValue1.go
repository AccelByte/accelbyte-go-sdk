// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

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

// updateUserStatItemValue1Cmd represents the updateUserStatItemValue1 command
var updateUserStatItemValue1Cmd = &cobra.Command{
	Use:   "updateUserStatItemValue1",
	Short: "Update user stat item value 1",
	Long:  `Update user stat item value 1`,
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
		input := &user_statistic.UpdateUserStatItemValue1Params{
			Body:          body,
			Namespace:     namespace,
			StatCode:      statCode,
			UserID:        userId,
			AdditionalKey: &additionalKey,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userStatisticService.UpdateUserStatItemValue1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(updateUserStatItemValue1Cmd)
	updateUserStatItemValue1Cmd.Flags().StringP("body", "b", " ", "Body")
	updateUserStatItemValue1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = updateUserStatItemValue1Cmd.MarkFlagRequired("namespace")
	updateUserStatItemValue1Cmd.Flags().StringP("statCode", "s", " ", "Stat code")
	_ = updateUserStatItemValue1Cmd.MarkFlagRequired("statCode")
	updateUserStatItemValue1Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = updateUserStatItemValue1Cmd.MarkFlagRequired("userId")
	updateUserStatItemValue1Cmd.Flags().StringP("additionalKey", "a", " ", "Additional key")
}
