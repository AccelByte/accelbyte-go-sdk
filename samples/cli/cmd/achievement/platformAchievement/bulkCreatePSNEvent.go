// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package platformAchievement

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclient/platform_achievement"
	"github.com/AccelByte/accelbyte-go-sdk/achievement-sdk/pkg/achievementclientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/achievement"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// BulkCreatePSNEventCmd represents the BulkCreatePSNEvent command
var BulkCreatePSNEventCmd = &cobra.Command{
	Use:   "bulkCreatePSNEvent",
	Short: "Bulk create PSN event",
	Long:  `Bulk create PSN event`,
	RunE: func(cmd *cobra.Command, args []string) error {
		platformAchievementService := &achievement.PlatformAchievementService{
			Client:          factory.NewAchievementClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *achievementclientmodels.ModelsBulkCreatePSNEvents
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &platform_achievement.BulkCreatePSNEventParams{
			Body:      body,
			Namespace: namespace,
		}
		ok, errOK := platformAchievementService.BulkCreatePSNEventShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	BulkCreatePSNEventCmd.Flags().String("body", "", "Body")
	_ = BulkCreatePSNEventCmd.MarkFlagRequired("body")
	BulkCreatePSNEventCmd.Flags().String("namespace", "", "Namespace")
	_ = BulkCreatePSNEventCmd.MarkFlagRequired("namespace")
}
