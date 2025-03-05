// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package goalConfiguration

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/challenge-sdk/pkg/challengeclient/goal_configuration"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/challenge"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetGoalsCmd represents the AdminGetGoals command
var AdminGetGoalsCmd = &cobra.Command{
	Use:   "adminGetGoals",
	Short: "Admin get goals",
	Long:  `Admin get goals`,
	RunE: func(cmd *cobra.Command, args []string) error {
		goalConfigurationService := &challenge.GoalConfigurationService{
			Client:          factory.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		challengeCode, _ := cmd.Flags().GetString("challengeCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		tagsString := cmd.Flag("tags").Value.String()
		var tags []string
		errTags := json.Unmarshal([]byte(tagsString), &tags)
		if errTags != nil {
			return errTags
		}
		input := &goal_configuration.AdminGetGoalsParams{
			ChallengeCode: challengeCode,
			Namespace:     namespace,
			Limit:         &limit,
			Offset:        &offset,
			SortBy:        &sortBy,
			Tags:          tags,
		}
		ok, errOK := goalConfigurationService.AdminGetGoalsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetGoalsCmd.Flags().String("challengeCode", "", "Challenge code")
	_ = AdminGetGoalsCmd.MarkFlagRequired("challengeCode")
	AdminGetGoalsCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetGoalsCmd.MarkFlagRequired("namespace")
	AdminGetGoalsCmd.Flags().Int64("limit", 20, "Limit")
	AdminGetGoalsCmd.Flags().Int64("offset", 0, "Offset")
	AdminGetGoalsCmd.Flags().String("sortBy", "", "Sort by")
	AdminGetGoalsCmd.Flags().String("tags", "", "Tags")
}
