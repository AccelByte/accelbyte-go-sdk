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

// BulkUpdateUserStatItem1Cmd represents the BulkUpdateUserStatItem1 command
var BulkUpdateUserStatItem1Cmd = &cobra.Command{
	Use:   "bulkUpdateUserStatItem1",
	Short: "Bulk update user stat item 1",
	Long:  `Bulk update user stat item 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []*socialclientmodels.BulkUserStatItemUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &user_statistic.BulkUpdateUserStatItem1Params{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := userStatisticService.BulkUpdateUserStatItem1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	BulkUpdateUserStatItem1Cmd.Flags().String("body", "", "Body")
	_ = BulkUpdateUserStatItem1Cmd.MarkFlagRequired("body")
	BulkUpdateUserStatItem1Cmd.Flags().String("namespace", "", "Namespace")
	_ = BulkUpdateUserStatItem1Cmd.MarkFlagRequired("namespace")
}
