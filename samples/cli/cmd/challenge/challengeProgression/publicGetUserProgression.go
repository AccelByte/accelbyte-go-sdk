// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package challengeProgression

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/challenge-sdk/pkg/challengeclient/challenge_progression"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/challenge"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetUserProgressionCmd represents the PublicGetUserProgression command
var PublicGetUserProgressionCmd = &cobra.Command{
	Use:   "publicGetUserProgression",
	Short: "Public get user progression",
	Long:  `Public get user progression`,
	RunE: func(cmd *cobra.Command, args []string) error {
		challengeProgressionService := &challenge.ChallengeProgressionService{
			Client:          factory.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		challengeCode, _ := cmd.Flags().GetString("challengeCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		dateTime, _ := cmd.Flags().GetString("dateTime")
		goalCode, _ := cmd.Flags().GetString("goalCode")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		tagsString := cmd.Flag("tags").Value.String()
		var tags []string
		errTags := json.Unmarshal([]byte(tagsString), &tags)
		if errTags != nil {
			return errTags
		}
		input := &challenge_progression.PublicGetUserProgressionParams{
			ChallengeCode: challengeCode,
			Namespace:     namespace,
			DateTime:      &dateTime,
			GoalCode:      &goalCode,
			Limit:         &limit,
			Offset:        &offset,
			Tags:          tags,
		}
		ok, errOK := challengeProgressionService.PublicGetUserProgressionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetUserProgressionCmd.Flags().String("challengeCode", "", "Challenge code")
	_ = PublicGetUserProgressionCmd.MarkFlagRequired("challengeCode")
	PublicGetUserProgressionCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetUserProgressionCmd.MarkFlagRequired("namespace")
	PublicGetUserProgressionCmd.Flags().String("dateTime", "", "Date time")
	PublicGetUserProgressionCmd.Flags().String("goalCode", "", "Goal code")
	PublicGetUserProgressionCmd.Flags().Int64("limit", 20, "Limit")
	PublicGetUserProgressionCmd.Flags().Int64("offset", 0, "Offset")
	PublicGetUserProgressionCmd.Flags().String("tags", "", "Tags")
}
