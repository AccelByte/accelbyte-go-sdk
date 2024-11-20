// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ams

import (
	"github.com/AccelByte/sample-apps/cmd/ams/account"
	"github.com/AccelByte/sample-apps/cmd/ams/amsInfo"
	"github.com/AccelByte/sample-apps/cmd/ams/amsQoS"
	"github.com/AccelByte/sample-apps/cmd/ams/artifacts"
	"github.com/AccelByte/sample-apps/cmd/ams/auth"
	"github.com/AccelByte/sample-apps/cmd/ams/development"
	"github.com/AccelByte/sample-apps/cmd/ams/fleetCommander"
	"github.com/AccelByte/sample-apps/cmd/ams/fleets"
	"github.com/AccelByte/sample-apps/cmd/ams/images"
	"github.com/AccelByte/sample-apps/cmd/ams/servers"
	"github.com/AccelByte/sample-apps/cmd/ams/watchdogs"
	"github.com/spf13/cobra"
)

// AmsCmd represents the service's child command
var AmsCmd = &cobra.Command{
	Use:   "Ams",
	Short: "Ams to get all the commands",
}

func init() {
	AmsCmd.AddCommand(auth.AuthCheckCmd)
	AmsCmd.AddCommand(fleetCommander.PortalHealthCheckCmd)
	AmsCmd.AddCommand(account.AdminAccountGetCmd)
	AmsCmd.AddCommand(account.AdminAccountCreateCmd)
	AmsCmd.AddCommand(account.AdminAccountLinkTokenGetCmd)
	AmsCmd.AddCommand(account.AdminAccountLinkCmd)
	AmsCmd.AddCommand(artifacts.ArtifactGetCmd)
	AmsCmd.AddCommand(artifacts.ArtifactBulkDeleteCmd)
	AmsCmd.AddCommand(artifacts.ArtifactUsageGetCmd)
	AmsCmd.AddCommand(artifacts.ArtifactDeleteCmd)
	AmsCmd.AddCommand(artifacts.ArtifactGetURLCmd)
	AmsCmd.AddCommand(development.DevelopmentServerConfigurationListCmd)
	AmsCmd.AddCommand(development.DevelopmentServerConfigurationCreateCmd)
	AmsCmd.AddCommand(development.DevelopmentServerConfigurationGetCmd)
	AmsCmd.AddCommand(development.DevelopmentServerConfigurationDeleteCmd)
	AmsCmd.AddCommand(fleets.FleetListCmd)
	AmsCmd.AddCommand(fleets.FleetCreateCmd)
	AmsCmd.AddCommand(fleets.FleetGetCmd)
	AmsCmd.AddCommand(fleets.FleetUpdateCmd)
	AmsCmd.AddCommand(fleets.FleetDeleteCmd)
	AmsCmd.AddCommand(artifacts.FleetArtifactSamplingRulesGetCmd)
	AmsCmd.AddCommand(artifacts.FleetArtifactSamplingRulesSetCmd)
	AmsCmd.AddCommand(fleets.FleetServersCmd)
	AmsCmd.AddCommand(servers.FleetServerHistoryCmd)
	AmsCmd.AddCommand(images.ImageListCmd)
	AmsCmd.AddCommand(images.ImagesStorageCmd)
	AmsCmd.AddCommand(images.ImageGetCmd)
	AmsCmd.AddCommand(images.ImageMarkForDeletionCmd)
	AmsCmd.AddCommand(images.ImagePatchCmd)
	AmsCmd.AddCommand(images.ImageUnmarkForDeletionCmd)
	AmsCmd.AddCommand(amsQoS.QoSRegionsGetCmd)
	AmsCmd.AddCommand(amsQoS.QoSRegionsUpdateCmd)
	AmsCmd.AddCommand(amsInfo.InfoRegionsCmd)
	AmsCmd.AddCommand(servers.FleetServerInfoCmd)
	AmsCmd.AddCommand(servers.FleetServerConnectionInfoCmd)
	AmsCmd.AddCommand(servers.ServerHistoryCmd)
	AmsCmd.AddCommand(amsInfo.InfoSupportedInstancesCmd)
	AmsCmd.AddCommand(account.AccountGetCmd)
	AmsCmd.AddCommand(fleets.FleetClaimByIDCmd)
	AmsCmd.AddCommand(watchdogs.LocalWatchdogConnectCmd)
	AmsCmd.AddCommand(fleets.FleetClaimByKeysCmd)
	AmsCmd.AddCommand(watchdogs.WatchdogConnectCmd)
	AmsCmd.AddCommand(amsInfo.UploadURLGetCmd)
	AmsCmd.AddCommand(fleetCommander.Func1Cmd)
	AmsCmd.AddCommand(fleetCommander.BasicHealthCheckCmd)
}
