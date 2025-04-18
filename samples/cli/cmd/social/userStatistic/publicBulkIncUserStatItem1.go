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

// PublicBulkIncUserStatItem1Cmd represents the PublicBulkIncUserStatItem1 command
var PublicBulkIncUserStatItem1Cmd = &cobra.Command{
	Use:   "publicBulkIncUserStatItem1",
	Short: "Public bulk inc user stat item 1",
	Long:  `Public bulk inc user stat item 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body []*socialclientmodels.BulkStatItemInc
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		input := &user_statistic.PublicBulkIncUserStatItem1Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, errOK := userStatisticService.PublicBulkIncUserStatItem1Short(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicBulkIncUserStatItem1Cmd.Flags().String("body", "", "Body")
	_ = PublicBulkIncUserStatItem1Cmd.MarkFlagRequired("body")
	PublicBulkIncUserStatItem1Cmd.Flags().String("namespace", "", "Namespace")
	_ = PublicBulkIncUserStatItem1Cmd.MarkFlagRequired("namespace")
	PublicBulkIncUserStatItem1Cmd.Flags().String("userId", "", "User id")
	_ = PublicBulkIncUserStatItem1Cmd.MarkFlagRequired("userId")
}
