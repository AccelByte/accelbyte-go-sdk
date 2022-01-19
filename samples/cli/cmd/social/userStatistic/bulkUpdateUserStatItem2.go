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

// bulkUpdateUserStatItem2Cmd represents the bulkUpdateUserStatItem2 command
var bulkUpdateUserStatItem2Cmd = &cobra.Command{
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
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(bulkUpdateUserStatItem2Cmd)
	bulkUpdateUserStatItem2Cmd.Flags().StringP("body", "b", " ", "Body")
	bulkUpdateUserStatItem2Cmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = bulkUpdateUserStatItem2Cmd.MarkFlagRequired("namespace")
	bulkUpdateUserStatItem2Cmd.Flags().StringP("userId", "u", " ", "User id")
	_ = bulkUpdateUserStatItem2Cmd.MarkFlagRequired("userId")
	bulkUpdateUserStatItem2Cmd.Flags().StringP("additionalKey", "a", " ", "Additional key")
}
