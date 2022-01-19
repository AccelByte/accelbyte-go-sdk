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

// publicIncUserStatItemValueCmd represents the publicIncUserStatItemValue command
var publicIncUserStatItemValueCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userStatisticService.PublicIncUserStatItemValue(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicIncUserStatItemValueCmd)
	publicIncUserStatItemValueCmd.Flags().StringP("body", "b", " ", "Body")
	publicIncUserStatItemValueCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = publicIncUserStatItemValueCmd.MarkFlagRequired("namespace")
	publicIncUserStatItemValueCmd.Flags().StringP("statCode", "s", " ", "Stat code")
	_ = publicIncUserStatItemValueCmd.MarkFlagRequired("statCode")
	publicIncUserStatItemValueCmd.Flags().StringP("userId", "u", " ", "User id")
	_ = publicIncUserStatItemValueCmd.MarkFlagRequired("userId")
}
