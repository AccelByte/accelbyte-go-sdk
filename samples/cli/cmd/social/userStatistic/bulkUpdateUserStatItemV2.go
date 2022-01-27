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

// bulkUpdateUserStatItemV2Cmd represents the bulkUpdateUserStatItemV2 command
var bulkUpdateUserStatItemV2Cmd = &cobra.Command{
	Use:   "bulkUpdateUserStatItemV2",
	Short: "Bulk update user stat item V2",
	Long:  `Bulk update user stat item V2`,
	RunE: func(cmd *cobra.Command, args []string) error {
		userStatisticService := &social.UserStatisticService{
			Client:          factory.NewSocialClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		bodyString := cmd.Flag("body").Value.String()
		var body []*socialclientmodels.BulkUserStatItemUpdate
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		input := &user_statistic.BulkUpdateUserStatItemV2Params{
			Body:      body,
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userStatisticService.BulkUpdateUserStatItemV2(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(bulkUpdateUserStatItemV2Cmd)
	bulkUpdateUserStatItemV2Cmd.Flags().StringP("body", "by", " ", "Body")
	bulkUpdateUserStatItemV2Cmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = bulkUpdateUserStatItemV2Cmd.MarkFlagRequired("namespace")
}
