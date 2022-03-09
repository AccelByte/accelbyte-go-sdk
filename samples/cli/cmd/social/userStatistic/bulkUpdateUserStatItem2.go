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

// BulkUpdateUserStatItem2Cmd represents the BulkUpdateUserStatItem2 command
var BulkUpdateUserStatItem2Cmd = &cobra.Command{
	Use:   "bulkUpdateUserStatItem2",
	Short: "Bulk update user stat item 2",
	Long:  `Bulk update user stat item 2`,
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
		input := &user_statistic.BulkUpdateUserStatItem2Params{
			Body:          body,
			Namespace:     namespace,
			UserID:        userId,
			AdditionalKey: &additionalKey,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userStatisticService.BulkUpdateUserStatItem2(input)
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
	BulkUpdateUserStatItem2Cmd.Flags().StringP("body", "", "", "Body")
	BulkUpdateUserStatItem2Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = BulkUpdateUserStatItem2Cmd.MarkFlagRequired("namespace")
	BulkUpdateUserStatItem2Cmd.Flags().StringP("userId", "", "", "User id")
	_ = BulkUpdateUserStatItem2Cmd.MarkFlagRequired("userId")
	BulkUpdateUserStatItem2Cmd.Flags().StringP("additionalKey", "", "", "Additional key")
}
