// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ruleSets

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2client/rule_sets"
	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2clientmodels"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/match2"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// UpdateRuleSetCmd represents the UpdateRuleSet command
var UpdateRuleSetCmd = &cobra.Command{
	Use:   "updateRuleSet",
	Short: "Update rule set",
	Long:  `Update rule set`,
	RunE: func(cmd *cobra.Command, args []string) error {
		ruleSetsService := &match2.RuleSetsService{
			Client:          factory.NewMatch2Client(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *match2clientmodels.APIMatchRuleSetData
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		ruleset, _ := cmd.Flags().GetString("ruleset")
		input := &rule_sets.UpdateRuleSetParams{
			Body:      body,
			Namespace: namespace,
			Ruleset:   ruleset,
		}
		ok, err := ruleSetsService.UpdateRuleSetShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	UpdateRuleSetCmd.Flags().String("body", "", "Body")
	_ = UpdateRuleSetCmd.MarkFlagRequired("body")
	UpdateRuleSetCmd.Flags().String("namespace", "", "Namespace")
	_ = UpdateRuleSetCmd.MarkFlagRequired("namespace")
	UpdateRuleSetCmd.Flags().String("ruleset", "", "Ruleset")
	_ = UpdateRuleSetCmd.MarkFlagRequired("ruleset")
}
