// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package loginqueue

import (
	"github.com/AccelByte/sample-apps/cmd/loginqueue/adminV1"
	"github.com/AccelByte/sample-apps/cmd/loginqueue/ticketV1"
	"github.com/spf13/cobra"
)

// LoginqueueCmd represents the service's child command
var LoginqueueCmd = &cobra.Command{
	Use:   "Loginqueue",
	Short: "Loginqueue to get all the commands",
}

func init() {
	LoginqueueCmd.AddCommand(adminV1.AdminGetConfigurationCmd)
	LoginqueueCmd.AddCommand(adminV1.AdminUpdateConfigurationCmd)
	LoginqueueCmd.AddCommand(adminV1.AdminGetStatusCmd)
	LoginqueueCmd.AddCommand(ticketV1.RefreshTicketCmd)
	LoginqueueCmd.AddCommand(ticketV1.CancelTicketCmd)
}
