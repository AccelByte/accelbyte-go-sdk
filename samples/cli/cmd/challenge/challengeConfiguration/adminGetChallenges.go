// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package challengeConfiguration

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/challenge-sdk/pkg/challengeclient/challenge_configuration"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/challenge"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetChallengesCmd represents the AdminGetChallenges command
var AdminGetChallengesCmd = &cobra.Command{
	Use:   "adminGetChallenges",
	Short: "Admin get challenges",
	Long:  `Admin get challenges`,
	RunE: func(cmd *cobra.Command, args []string) error {
		challengeConfigurationService := &challenge.ChallengeConfigurationService{
			Client:          factory.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		keyword, _ := cmd.Flags().GetString("keyword")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		sortBy, _ := cmd.Flags().GetString("sortBy")
		status, _ := cmd.Flags().GetString("status")
		tagsString := cmd.Flag("tags").Value.String()
		var tags []string
		errTags := json.Unmarshal([]byte(tagsString), &tags)
		if errTags != nil {
			return errTags
		}
		input := &challenge_configuration.AdminGetChallengesParams{
			Namespace: namespace,
			Keyword:   &keyword,
			Limit:     &limit,
			Offset:    &offset,
			SortBy:    &sortBy,
			Status:    &status,
			Tags:      tags,
		}
		ok, errOK := challengeConfigurationService.AdminGetChallengesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetChallengesCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetChallengesCmd.MarkFlagRequired("namespace")
	AdminGetChallengesCmd.Flags().String("keyword", "", "Keyword")
	AdminGetChallengesCmd.Flags().Int64("limit", 20, "Limit")
	AdminGetChallengesCmd.Flags().Int64("offset", 0, "Offset")
	AdminGetChallengesCmd.Flags().String("sortBy", "", "Sort by")
	AdminGetChallengesCmd.Flags().String("status", "", "Status")
	AdminGetChallengesCmd.Flags().String("tags", "", "Tags")
}
