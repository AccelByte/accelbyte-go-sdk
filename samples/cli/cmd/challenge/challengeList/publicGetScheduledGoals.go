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

// PublicGetScheduledGoalsCmd represents the PublicGetScheduledGoals command
var PublicGetScheduledGoalsCmd = &cobra.Command{
	Use:   "publicGetScheduledGoals",
	Short: "Public get scheduled goals",
	Long:  `Public get scheduled goals`,
	RunE: func(cmd *cobra.Command, args []string) error {
		challengeListService := &challenge.ChallengeListService{
			Client:          factory.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		challengeCode, _ := cmd.Flags().GetString("challengeCode")
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		tagsString := cmd.Flag("tags").Value.String()
		var tags []string
		errTags := json.Unmarshal([]byte(tagsString), &tags)
		if errTags != nil {
			return errTags
		}
		input := &challenge_list.PublicGetScheduledGoalsParams{
			ChallengeCode: challengeCode,
			Namespace:     namespace,
			Limit:         &limit,
			Offset:        &offset,
			Tags:          tags,
		}
		ok, errOK := challengeListService.PublicGetScheduledGoalsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetScheduledGoalsCmd.Flags().String("challengeCode", "", "Challenge code")
	_ = PublicGetScheduledGoalsCmd.MarkFlagRequired("challengeCode")
	PublicGetScheduledGoalsCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetScheduledGoalsCmd.MarkFlagRequired("namespace")
	PublicGetScheduledGoalsCmd.Flags().Int64("limit", 20, "Limit")
	PublicGetScheduledGoalsCmd.Flags().Int64("offset", 0, "Offset")
	PublicGetScheduledGoalsCmd.Flags().String("tags", "", "Tags")
}
