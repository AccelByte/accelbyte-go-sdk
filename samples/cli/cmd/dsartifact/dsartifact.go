// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dsartifact

import (
	"github.com/AccelByte/sample-apps/cmd/dsartifact/allTerminatedServers"
	"github.com/AccelByte/sample-apps/cmd/dsartifact/artifactUploadProcessQueue"
	"github.com/AccelByte/sample-apps/cmd/dsartifact/downloadServerArtifact"
	"github.com/AccelByte/sample-apps/cmd/dsartifact/operations"
	"github.com/AccelByte/sample-apps/cmd/dsartifact/terminatedServers"
	"github.com/spf13/cobra"
)

// DsartifactCmd represents the service's child command
var DsartifactCmd = &cobra.Command{
	Use:   "Dsartifact",
	Short: "Dsartifact to get all the commands",
}

func init() {
	DsartifactCmd.AddCommand(artifactUploadProcessQueue.ListNodesIPAddressCmd)
	DsartifactCmd.AddCommand(artifactUploadProcessQueue.DeleteNodeByIDCmd)
	DsartifactCmd.AddCommand(artifactUploadProcessQueue.ListQueueCmd)
	DsartifactCmd.AddCommand(artifactUploadProcessQueue.GetActiveQueueCmd)
	DsartifactCmd.AddCommand(artifactUploadProcessQueue.SetActiveQueueCmd)
	DsartifactCmd.AddCommand(artifactUploadProcessQueue.DeleteActiveQueueCmd)
	DsartifactCmd.AddCommand(artifactUploadProcessQueue.ReportFailedUploadCmd)
	DsartifactCmd.AddCommand(artifactUploadProcessQueue.DeleteQueueCmd)
	DsartifactCmd.AddCommand(artifactUploadProcessQueue.ListAllActiveQueueCmd)
	DsartifactCmd.AddCommand(artifactUploadProcessQueue.ListAllQueueCmd)
	DsartifactCmd.AddCommand(terminatedServers.ListTerminatedServersWithNamespaceCmd)
	DsartifactCmd.AddCommand(downloadServerArtifact.DownloadServerArtifactsCmd)
	DsartifactCmd.AddCommand(downloadServerArtifact.CheckServerArtifactCmd)
	DsartifactCmd.AddCommand(allTerminatedServers.ListTerminatedServersCmd)
	DsartifactCmd.AddCommand(operations.PublicGetMessagesCmd)
}
