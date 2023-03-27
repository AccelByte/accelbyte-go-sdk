// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package match2

import (
	"github.com/AccelByte/sample-apps/cmd/match2/backfill"
	"github.com/AccelByte/sample-apps/cmd/match2/matchFunctions"
	"github.com/AccelByte/sample-apps/cmd/match2/matchPools"
	"github.com/AccelByte/sample-apps/cmd/match2/matchTickets"
	"github.com/AccelByte/sample-apps/cmd/match2/operations"
	"github.com/AccelByte/sample-apps/cmd/match2/ruleSets"
	"github.com/spf13/cobra"
)

// Match2Cmd represents the service's child command
var Match2Cmd = &cobra.Command{
	Use:   "Match2",
	Short: "Match2 to get all the commands",
}

func init() {
	Match2Cmd.AddCommand(operations.GetHealthcheckInfoCmd)
	Match2Cmd.AddCommand(operations.GetHealthcheckInfoV1Cmd)
	Match2Cmd.AddCommand(backfill.CreateBackfillCmd)
	Match2Cmd.AddCommand(backfill.GetBackfillProposalCmd)
	Match2Cmd.AddCommand(backfill.GetBackfillCmd)
	Match2Cmd.AddCommand(backfill.DeleteBackfillCmd)
	Match2Cmd.AddCommand(backfill.AcceptBackfillCmd)
	Match2Cmd.AddCommand(backfill.RejectBackfillCmd)
	Match2Cmd.AddCommand(matchFunctions.MatchFunctionListCmd)
	Match2Cmd.AddCommand(matchFunctions.CreateMatchFunctionCmd)
	Match2Cmd.AddCommand(matchFunctions.UpdateMatchFunctionCmd)
	Match2Cmd.AddCommand(matchFunctions.DeleteMatchFunctionCmd)
	Match2Cmd.AddCommand(matchPools.MatchPoolListCmd)
	Match2Cmd.AddCommand(matchPools.CreateMatchPoolCmd)
	Match2Cmd.AddCommand(matchPools.MatchPoolDetailsCmd)
	Match2Cmd.AddCommand(matchPools.UpdateMatchPoolCmd)
	Match2Cmd.AddCommand(matchPools.DeleteMatchPoolCmd)
	Match2Cmd.AddCommand(matchPools.MatchPoolMetricCmd)
	Match2Cmd.AddCommand(matchTickets.CreateMatchTicketCmd)
	Match2Cmd.AddCommand(matchTickets.MatchTicketDetailsCmd)
	Match2Cmd.AddCommand(matchTickets.DeleteMatchTicketCmd)
	Match2Cmd.AddCommand(ruleSets.RuleSetListCmd)
	Match2Cmd.AddCommand(ruleSets.CreateRuleSetCmd)
	Match2Cmd.AddCommand(ruleSets.RuleSetDetailsCmd)
	Match2Cmd.AddCommand(ruleSets.UpdateRuleSetCmd)
	Match2Cmd.AddCommand(ruleSets.DeleteRuleSetCmd)
	Match2Cmd.AddCommand(operations.VersionCheckHandlerCmd)
}
