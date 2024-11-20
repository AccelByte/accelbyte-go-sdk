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

// BulkUpdateUserStatItemCmd represents the BulkUpdateUserStatItem command
var BulkUpdateUserStatItemCmd = &cobra.Command{
	Use:   "bulkUpdateUserStatItem",
	Short: "Bulk update user stat item",
	Long:  `Bulk update user stat item`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []*socialclientmodels.BulkStatItemUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		additionalKey, _ := cmd.Flags().GetString("additionalKey")
		input := &user_statistic.BulkUpdateUserStatItemParams{
			Body:          body,
			Namespace:     namespace,
			UserID:        userId,
			AdditionalKey: &additionalKey,
		}
		ok, errOK := userStatisticService.BulkUpdateUserStatItemShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	BulkUpdateUserStatItemCmd.Flags().String("body", "", "Body")
	_ = BulkUpdateUserStatItemCmd.MarkFlagRequired("body")
	BulkUpdateUserStatItemCmd.Flags().String("namespace", "", "Namespace")
	_ = BulkUpdateUserStatItemCmd.MarkFlagRequired("namespace")
	BulkUpdateUserStatItemCmd.Flags().String("userId", "", "User id")
	_ = BulkUpdateUserStatItemCmd.MarkFlagRequired("userId")
	BulkUpdateUserStatItemCmd.Flags().String("additionalKey", "", "Additional key")
}
