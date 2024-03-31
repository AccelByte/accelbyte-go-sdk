// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package sessionhistory

import (
	"github.com/AccelByte/sample-apps/cmd/sessionhistory/gameSessionDetail"
	"github.com/AccelByte/sample-apps/cmd/sessionhistory/operations"
	"github.com/AccelByte/sample-apps/cmd/sessionhistory/xRay"
	"github.com/spf13/cobra"
)

// SessionhistoryCmd represents the service's child command
var SessionhistoryCmd = &cobra.Command{
	Use:   "Sessionhistory",
	Short: "Sessionhistory to get all the commands",
}

func init() {
	SessionhistoryCmd.AddCommand(operations.GetHealthcheckInfoCmd)
	SessionhistoryCmd.AddCommand(operations.GetHealthcheckInfoV1Cmd)
	SessionhistoryCmd.AddCommand(gameSessionDetail.AdminQueryGameSessionDetailCmd)
	SessionhistoryCmd.AddCommand(gameSessionDetail.GetGameSessionDetailCmd)
	SessionhistoryCmd.AddCommand(gameSessionDetail.AdminQueryMatchmakingDetailCmd)
	SessionhistoryCmd.AddCommand(gameSessionDetail.AdminGetMatchmakingDetailBySessionIDCmd)
	SessionhistoryCmd.AddCommand(gameSessionDetail.AdminGetMatchmakingDetailByTicketIDCmd)
	SessionhistoryCmd.AddCommand(gameSessionDetail.AdminQueryPartyDetailCmd)
	SessionhistoryCmd.AddCommand(gameSessionDetail.GetPartyDetailCmd)
	SessionhistoryCmd.AddCommand(gameSessionDetail.AdminQueryTicketDetailCmd)
	SessionhistoryCmd.AddCommand(gameSessionDetail.AdminTicketDetailGetByTicketIDCmd)
	SessionhistoryCmd.AddCommand(xRay.QueryXrayMatchPoolCmd)
	SessionhistoryCmd.AddCommand(xRay.QueryDetailTickMatchPoolCmd)
	SessionhistoryCmd.AddCommand(xRay.QueryDetailTickMatchPoolMatchesCmd)
	SessionhistoryCmd.AddCommand(xRay.QueryDetailTickMatchPoolTicketCmd)
	SessionhistoryCmd.AddCommand(xRay.QueryMatchHistoriesCmd)
	SessionhistoryCmd.AddCommand(xRay.QueryMatchTicketHistoriesCmd)
	SessionhistoryCmd.AddCommand(xRay.QueryXrayMatchCmd)
	SessionhistoryCmd.AddCommand(xRay.QueryAcquiringDSCmd)
	SessionhistoryCmd.AddCommand(xRay.QueryAcquiringDSWaitTimeAvgCmd)
	SessionhistoryCmd.AddCommand(xRay.QueryMatchLengthDurationpAvgCmd)
	SessionhistoryCmd.AddCommand(xRay.QueryMatchLengthDurationp99Cmd)
	SessionhistoryCmd.AddCommand(xRay.QueryTotalActiveSessionCmd)
	SessionhistoryCmd.AddCommand(xRay.QueryTotalMatchmakingMatchCmd)
	SessionhistoryCmd.AddCommand(xRay.QueryTotalPlayerPersessionCmd)
	SessionhistoryCmd.AddCommand(xRay.QueryTotalMatchmakingCanceledCmd)
	SessionhistoryCmd.AddCommand(xRay.QueryTotalMatchmakingCreatedCmd)
	SessionhistoryCmd.AddCommand(xRay.QueryTotalMatchmakingExpiredCmd)
	SessionhistoryCmd.AddCommand(xRay.QueryTotalMatchmakingMatchTicketCmd)
	SessionhistoryCmd.AddCommand(xRay.QueryXrayTimelineByTicketIDCmd)
	SessionhistoryCmd.AddCommand(xRay.QueryXrayTimelineByUserIDCmd)
}
