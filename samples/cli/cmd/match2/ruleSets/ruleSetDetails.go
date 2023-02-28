// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ruleSets

import (
	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2client/rule_sets"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/match2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RuleSetDetailsCmd represents the RuleSetDetails command
var RuleSetDetailsCmd = &cobra.Command{
	Use:   "ruleSetDetails",
	Short: "Rule set details",
	Long:  `Rule set details`,
	RunE: func(cmd *cobra.Command, args []string) error {
		ruleSetsService := &match2.RuleSetsService{
			Client:          factory.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		ruleset, _ := cmd.Flags().GetString("ruleset")
		input := &rule_sets.RuleSetDetailsParams{
			Namespace: namespace,
			Ruleset:   ruleset,
		}
		ok, errOK := ruleSetsService.RuleSetDetailsShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	RuleSetDetailsCmd.Flags().String("namespace", "", "Namespace")
	_ = RuleSetDetailsCmd.MarkFlagRequired("namespace")
	RuleSetDetailsCmd.Flags().String("ruleset", "", "Ruleset")
	_ = RuleSetDetailsCmd.MarkFlagRequired("ruleset")
}
