// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package cloudsave

import (
	"github.com/AccelByte/sample-apps/cmd/cloudsave/adminConcurrentRecord"
	"github.com/AccelByte/sample-apps/cmd/cloudsave/adminGameRecord"
	"github.com/AccelByte/sample-apps/cmd/cloudsave/adminPlayerRecord"
	"github.com/AccelByte/sample-apps/cmd/cloudsave/adminRecord"
	"github.com/AccelByte/sample-apps/cmd/cloudsave/concurrentRecord"
	"github.com/AccelByte/sample-apps/cmd/cloudsave/publicGameRecord"
	"github.com/AccelByte/sample-apps/cmd/cloudsave/publicPlayerRecord"
	"github.com/spf13/cobra"
)

// CloudsaveCmd represents the service's child command
var CloudsaveCmd = &cobra.Command{
	Use:   "Cloudsave",
	Short: "Cloudsave to get all the commands",
}

func init() {
	CloudsaveCmd.AddCommand(adminRecord.AdminListAdminGameRecordV1Cmd)
	CloudsaveCmd.AddCommand(adminRecord.AdminBulkGetAdminGameRecordV1Cmd)
	CloudsaveCmd.AddCommand(adminRecord.AdminGetAdminGameRecordV1Cmd)
	CloudsaveCmd.AddCommand(adminRecord.AdminPutAdminGameRecordV1Cmd)
	CloudsaveCmd.AddCommand(adminRecord.AdminPostAdminGameRecordV1Cmd)
	CloudsaveCmd.AddCommand(adminRecord.AdminDeleteAdminGameRecordV1Cmd)
	CloudsaveCmd.AddCommand(adminConcurrentRecord.AdminPutAdminGameRecordConcurrentHandlerV1Cmd)
	CloudsaveCmd.AddCommand(adminConcurrentRecord.AdminPutGameRecordConcurrentHandlerV1Cmd)
	CloudsaveCmd.AddCommand(adminGameRecord.ListGameRecordsHandlerV1Cmd)
	CloudsaveCmd.AddCommand(adminGameRecord.AdminGetGameRecordHandlerV1Cmd)
	CloudsaveCmd.AddCommand(adminGameRecord.AdminPutGameRecordHandlerV1Cmd)
	CloudsaveCmd.AddCommand(adminGameRecord.AdminPostGameRecordHandlerV1Cmd)
	CloudsaveCmd.AddCommand(adminGameRecord.AdminDeleteGameRecordHandlerV1Cmd)
	CloudsaveCmd.AddCommand(adminRecord.BulkGetAdminPlayerRecordByUserIdsV1Cmd)
	CloudsaveCmd.AddCommand(adminPlayerRecord.BulkGetPlayerRecordSizeHandlerV1Cmd)
	CloudsaveCmd.AddCommand(adminPlayerRecord.ListPlayerRecordHandlerV1Cmd)
	CloudsaveCmd.AddCommand(adminRecord.AdminListAdminUserRecordsV1Cmd)
	CloudsaveCmd.AddCommand(adminRecord.AdminBulkGetAdminPlayerRecordV1Cmd)
	CloudsaveCmd.AddCommand(adminRecord.AdminGetAdminPlayerRecordV1Cmd)
	CloudsaveCmd.AddCommand(adminRecord.AdminPutAdminPlayerRecordV1Cmd)
	CloudsaveCmd.AddCommand(adminRecord.AdminPostPlayerAdminRecordV1Cmd)
	CloudsaveCmd.AddCommand(adminRecord.AdminDeleteAdminPlayerRecordV1Cmd)
	CloudsaveCmd.AddCommand(adminConcurrentRecord.AdminPutAdminPlayerRecordConcurrentHandlerV1Cmd)
	CloudsaveCmd.AddCommand(adminConcurrentRecord.AdminPutPlayerRecordConcurrentHandlerV1Cmd)
	CloudsaveCmd.AddCommand(adminConcurrentRecord.AdminPutPlayerPublicRecordConcurrentHandlerV1Cmd)
	CloudsaveCmd.AddCommand(adminPlayerRecord.AdminRetrievePlayerRecordsCmd)
	CloudsaveCmd.AddCommand(adminPlayerRecord.AdminGetPlayerRecordHandlerV1Cmd)
	CloudsaveCmd.AddCommand(adminPlayerRecord.AdminPutPlayerRecordHandlerV1Cmd)
	CloudsaveCmd.AddCommand(adminPlayerRecord.AdminPostPlayerRecordHandlerV1Cmd)
	CloudsaveCmd.AddCommand(adminPlayerRecord.AdminDeletePlayerRecordHandlerV1Cmd)
	CloudsaveCmd.AddCommand(adminPlayerRecord.AdminGetPlayerPublicRecordHandlerV1Cmd)
	CloudsaveCmd.AddCommand(adminPlayerRecord.AdminPutPlayerPublicRecordHandlerV1Cmd)
	CloudsaveCmd.AddCommand(adminPlayerRecord.AdminPostPlayerPublicRecordHandlerV1Cmd)
	CloudsaveCmd.AddCommand(adminPlayerRecord.AdminDeletePlayerPublicRecordHandlerV1Cmd)
	CloudsaveCmd.AddCommand(adminPlayerRecord.AdminGetPlayerRecordSizeHandlerV1Cmd)
	CloudsaveCmd.AddCommand(concurrentRecord.PutGameRecordConcurrentHandlerV1Cmd)
	CloudsaveCmd.AddCommand(publicGameRecord.GetGameRecordsBulkCmd)
	CloudsaveCmd.AddCommand(publicGameRecord.GetGameRecordHandlerV1Cmd)
	CloudsaveCmd.AddCommand(publicGameRecord.PutGameRecordHandlerV1Cmd)
	CloudsaveCmd.AddCommand(publicGameRecord.PostGameRecordHandlerV1Cmd)
	CloudsaveCmd.AddCommand(publicGameRecord.DeleteGameRecordHandlerV1Cmd)
	CloudsaveCmd.AddCommand(publicPlayerRecord.BulkGetPlayerPublicRecordHandlerV1Cmd)
	CloudsaveCmd.AddCommand(publicPlayerRecord.RetrievePlayerRecordsCmd)
	CloudsaveCmd.AddCommand(publicPlayerRecord.GetPlayerRecordsBulkHandlerV1Cmd)
	CloudsaveCmd.AddCommand(publicPlayerRecord.PublicDeletePlayerPublicRecordHandlerV1Cmd)
	CloudsaveCmd.AddCommand(concurrentRecord.PutPlayerRecordConcurrentHandlerV1Cmd)
	CloudsaveCmd.AddCommand(concurrentRecord.PutPlayerPublicRecordConcurrentHandlerV1Cmd)
	CloudsaveCmd.AddCommand(publicPlayerRecord.GetOtherPlayerPublicRecordKeyHandlerV1Cmd)
	CloudsaveCmd.AddCommand(publicPlayerRecord.GetOtherPlayerPublicRecordHandlerV1Cmd)
	CloudsaveCmd.AddCommand(publicPlayerRecord.GetPlayerRecordHandlerV1Cmd)
	CloudsaveCmd.AddCommand(publicPlayerRecord.PutPlayerRecordHandlerV1Cmd)
	CloudsaveCmd.AddCommand(publicPlayerRecord.PostPlayerRecordHandlerV1Cmd)
	CloudsaveCmd.AddCommand(publicPlayerRecord.DeletePlayerRecordHandlerV1Cmd)
	CloudsaveCmd.AddCommand(publicPlayerRecord.GetPlayerPublicRecordHandlerV1Cmd)
	CloudsaveCmd.AddCommand(publicPlayerRecord.PutPlayerPublicRecordHandlerV1Cmd)
	CloudsaveCmd.AddCommand(publicPlayerRecord.PostPlayerPublicRecordHandlerV1Cmd)
}
