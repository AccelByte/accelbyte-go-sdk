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

// BulkGetOrDefaultByUserIdCmd represents the BulkGetOrDefaultByUserId command
var BulkGetOrDefaultByUserIdCmd = &cobra.Command{
	Use:   "bulkGetOrDefaultByUserId",
	Short: "Bulk get or default by user id",
	Long:  `Bulk get or default by user id`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *socialclientmodels.BulkUserStatItemByStatCodes
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		additionalKey, _ := cmd.Flags().GetString("additionalKey")
		input := &user_statistic.BulkGetOrDefaultByUserIDParams{
			Body:          body,
			Namespace:     namespace,
			UserID:        userId,
			AdditionalKey: &additionalKey,
		}
		ok, errOK := userStatisticService.BulkGetOrDefaultByUserIDShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	BulkGetOrDefaultByUserIdCmd.Flags().String("body", "", "Body")
	_ = BulkGetOrDefaultByUserIdCmd.MarkFlagRequired("body")
	BulkGetOrDefaultByUserIdCmd.Flags().String("namespace", "", "Namespace")
	_ = BulkGetOrDefaultByUserIdCmd.MarkFlagRequired("namespace")
	BulkGetOrDefaultByUserIdCmd.Flags().String("userId", "", "User id")
	_ = BulkGetOrDefaultByUserIdCmd.MarkFlagRequired("userId")
	BulkGetOrDefaultByUserIdCmd.Flags().String("additionalKey", "", "Additional key")
}
