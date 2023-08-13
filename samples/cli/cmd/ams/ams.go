// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package ams

import (
	"github.com/AccelByte/sample-apps/cmd/ams/account"
	"github.com/AccelByte/sample-apps/cmd/ams/amsInfo"
	"github.com/AccelByte/sample-apps/cmd/ams/fleetCommander"
	"github.com/AccelByte/sample-apps/cmd/ams/fleets"
	"github.com/AccelByte/sample-apps/cmd/ams/images"
	"github.com/AccelByte/sample-apps/cmd/ams/operations"
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
	AmsCmd.AddCommand(operations.Func2Cmd)
	AmsCmd.AddCommand(account.AccountGetCmd)
	AmsCmd.AddCommand(account.AccountCreateCmd)
	AmsCmd.AddCommand(account.AccountLinkTokenGetCmd)
	AmsCmd.AddCommand(account.AccountLinkCmd)
	AmsCmd.AddCommand(fleets.FleetListCmd)
	AmsCmd.AddCommand(fleets.FleetCreateCmd)
	AmsCmd.AddCommand(fleets.FleetGetCmd)
	AmsCmd.AddCommand(fleets.FleetUpdateCmd)
	AmsCmd.AddCommand(fleets.FleetDeleteCmd)
	AmsCmd.AddCommand(fleets.FleetServersCmd)
	AmsCmd.AddCommand(servers.FleetServerHistoryCmd)
	AmsCmd.AddCommand(images.ImageListCmd)
	AmsCmd.AddCommand(images.ImageGetCmd)
	AmsCmd.AddCommand(images.ImagePatchCmd)
	AmsCmd.AddCommand(amsInfo.InfoRegionsCmd)
	AmsCmd.AddCommand(servers.FleetServerInfoCmd)
	AmsCmd.AddCommand(servers.ServerHistoryCmd)
	AmsCmd.AddCommand(amsInfo.InfoSupportedInstancesCmd)
	AmsCmd.AddCommand(fleets.FleetClaimByIDCmd)
	AmsCmd.AddCommand(fleets.FleetClaimByKeysCmd)
	AmsCmd.AddCommand(watchdogs.WatchdogConnectCmd)
	AmsCmd.AddCommand(fleetCommander.Func3Cmd)
	AmsCmd.AddCommand(operations.PortalHealthCheckCmd)
}
