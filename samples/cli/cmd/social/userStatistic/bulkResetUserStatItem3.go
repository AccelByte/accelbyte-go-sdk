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

// BulkResetUserStatItem3Cmd represents the BulkResetUserStatItem3 command
var BulkResetUserStatItem3Cmd = &cobra.Command{
	Use:   "bulkResetUserStatItem3",
	Short: "Bulk reset user stat item 3",
	Long:  `Bulk reset user stat item 3`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []*socialclientmodels.BulkStatItemReset
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &user_statistic.BulkResetUserStatItem3Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := userStatisticService.BulkResetUserStatItem3Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	BulkResetUserStatItem3Cmd.Flags().String("body", "", "Body")
	_ = BulkResetUserStatItem3Cmd.MarkFlagRequired("body")
	BulkResetUserStatItem3Cmd.Flags().String("namespace", "", "Namespace")
	_ = BulkResetUserStatItem3Cmd.MarkFlagRequired("namespace")
	BulkResetUserStatItem3Cmd.Flags().String("userId", "", "User id")
	_ = BulkResetUserStatItem3Cmd.MarkFlagRequired("userId")
}
