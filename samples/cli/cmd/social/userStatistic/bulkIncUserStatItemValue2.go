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

// BulkIncUserStatItemValue2Cmd represents the BulkIncUserStatItemValue2 command
var BulkIncUserStatItemValue2Cmd = &cobra.Command{
	Use:   "bulkIncUserStatItemValue2",
	Short: "Bulk inc user stat item value 2",
	Long:  `Bulk inc user stat item value 2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body []*socialclientmodels.BulkStatItemInc
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &user_statistic.BulkIncUserStatItemValue2Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userStatisticService.BulkIncUserStatItemValue2(input)
		if err != nil {
			logrus.Error(err)
			return err
		} else {
			logrus.Infof("Response CLI success", ok)
		}
		return nil
	},
}

func init() {
	BulkIncUserStatItemValue2Cmd.Flags().StringP("body", "", "", "Body")
	BulkIncUserStatItemValue2Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = BulkIncUserStatItemValue2Cmd.MarkFlagRequired("namespace")
	BulkIncUserStatItemValue2Cmd.Flags().StringP("userId", "", "", "User id")
	_ = BulkIncUserStatItemValue2Cmd.MarkFlagRequired("userId")
}
