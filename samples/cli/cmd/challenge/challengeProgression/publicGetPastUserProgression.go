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

// PublicGetPastUserProgressionCmd represents the PublicGetPastUserProgression command
var PublicGetPastUserProgressionCmd = &cobra.Command{
	Use:   "publicGetPastUserProgression",
	Short: "Public get past user progression",
	Long:  `Public get past user progression`,
	RunE: func(cmd *cobra.Command, args []string) error {
		challengeProgressionService := &challenge.ChallengeProgressionService{
			Client:          factory.NewChallengeClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		challengeCode, _ := cmd.Flags().GetString("challengeCode")
		index, _ := cmd.Flags().GetInt64("index")
		namespace, _ := cmd.Flags().GetString("namespace")
		goalCode, _ := cmd.Flags().GetString("goalCode")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		tagsString := cmd.Flag("tags").Value.String()
		var tags []string
		errTags := json.Unmarshal([]byte(tagsString), &tags)
		if errTags != nil {
			return errTags
		}
		input := &challenge_progression.PublicGetPastUserProgressionParams{
			ChallengeCode: challengeCode,
			Index:         index,
			Namespace:     namespace,
			GoalCode:      &goalCode,
			Limit:         &limit,
			Offset:        &offset,
			Tags:          tags,
		}
		ok, errOK := challengeProgressionService.PublicGetPastUserProgressionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	PublicGetPastUserProgressionCmd.Flags().String("challengeCode", "", "Challenge code")
	_ = PublicGetPastUserProgressionCmd.MarkFlagRequired("challengeCode")
	PublicGetPastUserProgressionCmd.Flags().Int64("index", 0, "Index")
	_ = PublicGetPastUserProgressionCmd.MarkFlagRequired("index")
	PublicGetPastUserProgressionCmd.Flags().String("namespace", "", "Namespace")
	_ = PublicGetPastUserProgressionCmd.MarkFlagRequired("namespace")
	PublicGetPastUserProgressionCmd.Flags().String("goalCode", "", "Goal code")
	PublicGetPastUserProgressionCmd.Flags().Int64("limit", 20, "Limit")
	PublicGetPastUserProgressionCmd.Flags().Int64("offset", 0, "Offset")
	PublicGetPastUserProgressionCmd.Flags().String("tags", "", "Tags")
}
