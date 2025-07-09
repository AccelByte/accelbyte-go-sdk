// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package sessionhistory

import (
	"github.com/AccelByte/sample-apps/cmd/sessionhistory/xRay"
	"github.com/spf13/cobra"
)

// SessionhistoryCmd represents the service's child command
var SessionhistoryCmd = &cobra.Command{
	Use:   "Sessionhistory",
	Short: "Sessionhistory to get all the commands",
}

func init() {
	SessionhistoryCmd.AddCommand(xRay.CreateXrayTicketObservabilityCmd)
	SessionhistoryCmd.AddCommand(xRay.CreateXrayBulkTicketObservabilityCmd)
}
