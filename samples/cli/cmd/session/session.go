// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package session

import (
	"github.com/AccelByte/sample-apps/cmd/session/configurationTemplate"
	"github.com/AccelByte/sample-apps/cmd/session/dsmcDefaultConfiguration"
	"github.com/AccelByte/sample-apps/cmd/session/environmentVariable"
	"github.com/AccelByte/sample-apps/cmd/session/gameSession"
	"github.com/AccelByte/sample-apps/cmd/session/globalConfiguration"
	"github.com/AccelByte/sample-apps/cmd/session/operations"
	"github.com/AccelByte/sample-apps/cmd/session/party"
	"github.com/AccelByte/sample-apps/cmd/session/platformCredential"
	"github.com/AccelByte/sample-apps/cmd/session/player"
	"github.com/AccelByte/sample-apps/cmd/session/sessionStorage"
	"github.com/spf13/cobra"
)

// SessionCmd represents the service's child command
var SessionCmd = &cobra.Command{
	Use:   "Session",
	Short: "Session to get all the commands",
}

func init() {
	SessionCmd.AddCommand(operations.GetHealthcheckInfoCmd)
	SessionCmd.AddCommand(operations.GetHealthcheckInfoV1Cmd)
	SessionCmd.AddCommand(dsmcDefaultConfiguration.AdminGetDSMCConfigurationDefaultCmd)
	SessionCmd.AddCommand(environmentVariable.AdminListEnvironmentVariablesCmd)
	SessionCmd.AddCommand(globalConfiguration.AdminListGlobalConfigurationCmd)
	SessionCmd.AddCommand(globalConfiguration.AdminUpdateGlobalConfigurationCmd)
	SessionCmd.AddCommand(globalConfiguration.AdminDeleteGlobalConfigurationCmd)
	SessionCmd.AddCommand(configurationTemplate.AdminGetConfigurationAlertV1Cmd)
	SessionCmd.AddCommand(configurationTemplate.AdminUpdateConfigurationAlertV1Cmd)
	SessionCmd.AddCommand(configurationTemplate.AdminCreateConfigurationAlertV1Cmd)
	SessionCmd.AddCommand(configurationTemplate.AdminDeleteConfigurationAlertV1Cmd)
	SessionCmd.AddCommand(configurationTemplate.AdminCreateConfigurationTemplateV1Cmd)
	SessionCmd.AddCommand(configurationTemplate.AdminGetAllConfigurationTemplatesV1Cmd)
	SessionCmd.AddCommand(configurationTemplate.AdminGetConfigurationTemplateV1Cmd)
	SessionCmd.AddCommand(configurationTemplate.AdminUpdateConfigurationTemplateV1Cmd)
	SessionCmd.AddCommand(configurationTemplate.AdminDeleteConfigurationTemplateV1Cmd)
	SessionCmd.AddCommand(configurationTemplate.AdminGetDSMCConfigurationCmd)
	SessionCmd.AddCommand(configurationTemplate.AdminSyncDSMCConfigurationCmd)
	SessionCmd.AddCommand(gameSession.AdminQueryGameSessionsCmd)
	SessionCmd.AddCommand(gameSession.AdminQueryGameSessionsByAttributesCmd)
	SessionCmd.AddCommand(gameSession.AdminDeleteBulkGameSessionsCmd)
	SessionCmd.AddCommand(gameSession.AdminUpdateGameSessionMemberCmd)
	SessionCmd.AddCommand(party.AdminQueryPartiesCmd)
	SessionCmd.AddCommand(platformCredential.AdminGetPlatformCredentialsCmd)
	SessionCmd.AddCommand(platformCredential.AdminUpdatePlatformCredentialsCmd)
	SessionCmd.AddCommand(platformCredential.AdminDeletePlatformCredentialsCmd)
	SessionCmd.AddCommand(sessionStorage.AdminReadSessionStorageCmd)
	SessionCmd.AddCommand(sessionStorage.AdminDeleteUserSessionStorageCmd)
	SessionCmd.AddCommand(sessionStorage.AdminReadUserSessionStorageCmd)
	SessionCmd.AddCommand(player.AdminQueryPlayerAttributesCmd)
	SessionCmd.AddCommand(player.AdminGetPlayerAttributesCmd)
	SessionCmd.AddCommand(gameSession.CreateGameSessionCmd)
	SessionCmd.AddCommand(gameSession.PublicQueryGameSessionsByAttributesCmd)
	SessionCmd.AddCommand(gameSession.PublicSessionJoinCodeCmd)
	SessionCmd.AddCommand(gameSession.GetGameSessionByPodNameCmd)
	SessionCmd.AddCommand(gameSession.GetGameSessionCmd)
	SessionCmd.AddCommand(gameSession.UpdateGameSessionCmd)
	SessionCmd.AddCommand(gameSession.DeleteGameSessionCmd)
	SessionCmd.AddCommand(gameSession.PatchUpdateGameSessionCmd)
	SessionCmd.AddCommand(gameSession.UpdateGameSessionBackfillTicketIDCmd)
	SessionCmd.AddCommand(gameSession.GameSessionGenerateCodeCmd)
	SessionCmd.AddCommand(gameSession.PublicRevokeGameSessionCodeCmd)
	SessionCmd.AddCommand(gameSession.PublicGameSessionInviteCmd)
	SessionCmd.AddCommand(gameSession.JoinGameSessionCmd)
	SessionCmd.AddCommand(gameSession.PublicPromoteGameSessionLeaderCmd)
	SessionCmd.AddCommand(gameSession.LeaveGameSessionCmd)
	SessionCmd.AddCommand(gameSession.PublicGameSessionRejectCmd)
	SessionCmd.AddCommand(gameSession.AppendTeamGameSessionCmd)
	SessionCmd.AddCommand(party.PublicPartyJoinCodeCmd)
	SessionCmd.AddCommand(party.PublicGetPartyCmd)
	SessionCmd.AddCommand(party.PublicUpdatePartyCmd)
	SessionCmd.AddCommand(party.PublicPatchUpdatePartyCmd)
	SessionCmd.AddCommand(party.PublicGeneratePartyCodeCmd)
	SessionCmd.AddCommand(party.PublicRevokePartyCodeCmd)
	SessionCmd.AddCommand(party.PublicPartyInviteCmd)
	SessionCmd.AddCommand(party.PublicPromotePartyLeaderCmd)
	SessionCmd.AddCommand(party.PublicPartyJoinCmd)
	SessionCmd.AddCommand(party.PublicPartyLeaveCmd)
	SessionCmd.AddCommand(party.PublicPartyRejectCmd)
	SessionCmd.AddCommand(party.PublicPartyKickCmd)
	SessionCmd.AddCommand(party.PublicCreatePartyCmd)
	SessionCmd.AddCommand(sessionStorage.PublicUpdateInsertSessionStorageLeaderCmd)
	SessionCmd.AddCommand(sessionStorage.PublicUpdateInsertSessionStorageCmd)
	SessionCmd.AddCommand(player.PublicGetBulkPlayerCurrentPlatformCmd)
	SessionCmd.AddCommand(player.PublicGetPlayerAttributesCmd)
	SessionCmd.AddCommand(player.PublicStorePlayerAttributesCmd)
	SessionCmd.AddCommand(player.PublicDeletePlayerAttributesCmd)
	SessionCmd.AddCommand(gameSession.PublicQueryMyGameSessionsCmd)
	SessionCmd.AddCommand(party.PublicQueryMyPartiesCmd)
}
