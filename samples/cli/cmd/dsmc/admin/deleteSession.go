// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package admin

import (
	"github.com/AccelByte/accelbyte-go-sdk/dsmc-sdk/pkg/dsmcclient/admin"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/dsmc"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// DeleteSessionCmd represents the DeleteSession command
var DeleteSessionCmd = &cobra.Command{
	Use:   "deleteSession",
	Short: "Delete session",
	Long:  `Delete session`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminService := &dsmc.AdminService{
			Client:          factory.NewDsmcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		sessionID, _ := cmd.Flags().GetString("sessionID")
		input := &admin.DeleteSessionParams{
			Namespace: namespace,
			SessionID: sessionID,
		}
		errInput := adminService.DeleteSessionShort(input)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	DeleteSessionCmd.Flags().String("namespace", "", "Namespace")
	_ = DeleteSessionCmd.MarkFlagRequired("namespace")
	DeleteSessionCmd.Flags().String("sessionID", "", "Session ID")
	_ = DeleteSessionCmd.MarkFlagRequired("sessionID")
}
