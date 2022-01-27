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

// bulkUpdateUserStatItemCmd represents the bulkUpdateUserStatItem command
var bulkUpdateUserStatItemCmd = &cobra.Command{
	Use:   "bulkUpdateUserStatItem",
	Short: "Bulk update user stat item",
	Long:  `Bulk update user stat item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body []*socialclientmodels.BulkStatItemUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		additionalKey, _ := cmd.Flags().GetString("additionalKey")
		input := &user_statistic.BulkUpdateUserStatItemParams{
			Body:          body,
			Namespace:     namespace,
			UserID:        userId,
			AdditionalKey: &additionalKey,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userStatisticService.BulkUpdateUserStatItem(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(bulkUpdateUserStatItemCmd)
	bulkUpdateUserStatItemCmd.Flags().StringP("body", "by", " ", "Body")
	bulkUpdateUserStatItemCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = bulkUpdateUserStatItemCmd.MarkFlagRequired("namespace")
	bulkUpdateUserStatItemCmd.Flags().StringP("userId", "ud", " ", "User id")
	_ = bulkUpdateUserStatItemCmd.MarkFlagRequired("userId")
	bulkUpdateUserStatItemCmd.Flags().StringP("additionalKey", "ay", " ", "Additional key")
}
