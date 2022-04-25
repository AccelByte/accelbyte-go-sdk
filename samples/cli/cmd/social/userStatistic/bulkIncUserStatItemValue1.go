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

// BulkIncUserStatItemValue1Cmd represents the BulkIncUserStatItemValue1 command
var BulkIncUserStatItemValue1Cmd = &cobra.Command{
	Use:   "bulkIncUserStatItemValue1",
	Short: "Bulk inc user stat item value 1",
	Long:  `Bulk inc user stat item value 1`,
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
		input := &user_statistic.BulkIncUserStatItemValue1Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := userStatisticService.BulkIncUserStatItemValue1Short(input, nil)
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
	BulkIncUserStatItemValue1Cmd.Flags().StringP("body", "", "", "Body")
	BulkIncUserStatItemValue1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = BulkIncUserStatItemValue1Cmd.MarkFlagRequired("namespace")
	BulkIncUserStatItemValue1Cmd.Flags().StringP("userId", "", "", "User id")
	_ = BulkIncUserStatItemValue1Cmd.MarkFlagRequired("userId")
}
