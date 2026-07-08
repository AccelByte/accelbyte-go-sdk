// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package challengeList

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/challenge-sdk/pkg/challengeclient/challenge_list"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/challenge"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetChallengesCmd represents the PublicGetChallenges command
var PublicGetChallengesCmd = &cobra.Command{
	Use:   "publicGetChallenges",
	Short: "Public get challenges",
	Long:  `Public get challenges`,
	RunE: func(cmd *cobra.Command, args []string) error {
		challengeListService := &challenge.ChallengeListService{
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
		input := &challenge_list.PublicGetChallengesParams{
			Namespace: namespace,
			Keyword:   &keyword,
			Limit:     &limit,
			Offset:    &offset,
			SortBy:    &sortBy,
			Status:    &status,
			Tags:      tags,
		}
		ok, errOK := challengeListService.PublicGetChallengesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetChallengesCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetChallengesCmd.MarkFlagRequired("namespace")
	PublicGetChallengesCmd.Flags().String("keyword", "", "Keyword")
	PublicGetChallengesCmd.Flags().Int64("limit", 20, "Limit")
	PublicGetChallengesCmd.Flags().Int64("offset", 0, "Offset")
	PublicGetChallengesCmd.Flags().String("sortBy", "", "Sort by")
	PublicGetChallengesCmd.Flags().String("status", "", "Status")
	PublicGetChallengesCmd.Flags().String("tags", "", "Tags")
}
