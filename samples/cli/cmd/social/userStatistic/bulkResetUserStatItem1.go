// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

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

// bulkResetUserStatItem1Cmd represents the bulkResetUserStatItem1 command
var bulkResetUserStatItem1Cmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := userStatisticService.BulkResetUserStatItem1(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(bulkResetUserStatItem1Cmd)
	bulkResetUserStatItem1Cmd.Flags().StringP("body", "b", " ", "Body")
	bulkResetUserStatItem1Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = bulkResetUserStatItem1Cmd.MarkFlagRequired("namespace")
	bulkResetUserStatItem1Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = bulkResetUserStatItem1Cmd.MarkFlagRequired("userId")
}