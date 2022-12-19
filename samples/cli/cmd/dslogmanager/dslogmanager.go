// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dslogmanager

import (
	"github.com/AccelByte/sample-apps/cmd/dslogmanager/admin"
	"github.com/AccelByte/sample-apps/cmd/dslogmanager/allTerminatedServers"
	"github.com/AccelByte/sample-apps/cmd/dslogmanager/dslogmanagerOperations"
	"github.com/AccelByte/sample-apps/cmd/dslogmanager/terminatedServers"
	"github.com/spf13/cobra"
)

// DslogmanagerCmd represents the service's child command
var DslogmanagerCmd = &cobra.Command{
	Use:   "Dslogmanager",
	Short: "Dslogmanager to get all the commands",
}

func init() {
	DslogmanagerCmd.AddCommand(admin.GetServerLogsCmd)
	DslogmanagerCmd.AddCommand(terminatedServers.ListTerminatedServersCmd)
	DslogmanagerCmd.AddCommand(terminatedServers.DownloadServerLogsCmd)
	DslogmanagerCmd.AddCommand(terminatedServers.CheckServerLogsCmd)
	DslogmanagerCmd.AddCommand(allTerminatedServers.BatchDownloadServerLogsCmd)
	DslogmanagerCmd.AddCommand(allTerminatedServers.ListAllTerminatedServersCmd)
	DslogmanagerCmd.AddCommand(dslogmanagerOperations.PublicGetMessagesCmd)
}
