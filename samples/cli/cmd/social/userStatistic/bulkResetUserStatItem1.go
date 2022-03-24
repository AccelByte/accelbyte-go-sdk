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

// BulkResetUserStatItem1Cmd represents the BulkResetUserStatItem1 command
var BulkResetUserStatItem1Cmd = &cobra.Command{
	Use:   "bulkResetUserStatItem1",
	Short: "Bulk reset user stat item 1",
	Long:  `Bulk reset user stat item 1`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		bodyString := cmd.Flag("body").Value.String()
		var body []*socialclientmodels.BulkStatItemReset
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &user_statistic.BulkResetUserStatItem1Params{
			Body:      body,
			Namespace: namespace,
			UserID:    userId,
		}
		ok, err := userStatisticService.BulkResetUserStatItem1Short(input)
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
	BulkResetUserStatItem1Cmd.Flags().StringP("body", "", "", "Body")
	BulkResetUserStatItem1Cmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = BulkResetUserStatItem1Cmd.MarkFlagRequired("namespace")
	BulkResetUserStatItem1Cmd.Flags().StringP("userId", "", "", "User id")
	_ = BulkResetUserStatItem1Cmd.MarkFlagRequired("userId")
}
