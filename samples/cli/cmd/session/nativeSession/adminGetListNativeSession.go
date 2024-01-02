// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package nativeSession

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/session"
	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclient/native_session"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminGetListNativeSessionCmd represents the AdminGetListNativeSession command
var AdminGetListNativeSessionCmd = &cobra.Command{
	Use:   "adminGetListNativeSession",
	Short: "Admin get list native session",
	Long:  `Admin get list native session`,
	RunE: func(cmd *cobra.Command, args []string) error {
		nativeSessionService := &session.NativeSessionService{
			Client:          factory.NewSessionClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		order, _ := cmd.Flags().GetString("order")
		input := &native_session.AdminGetListNativeSessionParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
			Order:     &order,
		}
		ok, errOK := nativeSessionService.AdminGetListNativeSessionShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	AdminGetListNativeSessionCmd.Flags().String("namespace", "", "Namespace")
	_ = AdminGetListNativeSessionCmd.MarkFlagRequired("namespace")
	AdminGetListNativeSessionCmd.Flags().Int64("limit", 20, "Limit")
	AdminGetListNativeSessionCmd.Flags().Int64("offset", 0, "Offset")
	AdminGetListNativeSessionCmd.Flags().String("order", "", "Order")
}
