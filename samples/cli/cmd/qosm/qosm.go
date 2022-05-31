// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package qosm

import (
	"github.com/AccelByte/sample-apps/cmd/qosm/admin"
	"github.com/AccelByte/sample-apps/cmd/qosm/public"
	"github.com/AccelByte/sample-apps/cmd/qosm/server"
	"github.com/spf13/cobra"
)

// QosmCmd represents the service's child command
var QosmCmd = &cobra.Command{
	Use:   "Qosm",
	Short: "Qosm to get all the commands",
}

func init() {
	QosmCmd.AddCommand(admin.UpdateServerConfigCmd)
	QosmCmd.AddCommand(admin.DeleteServerCmd)
	QosmCmd.AddCommand(admin.SetServerAliasCmd)
	QosmCmd.AddCommand(public.ListServerPerNamespaceCmd)
	QosmCmd.AddCommand(public.ListServerCmd)
	QosmCmd.AddCommand(server.HeartbeatCmd)
}
