// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package dlc

import (
	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclient/dlc"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/platform"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetUserDLCCmd represents the GetUserDLC command
var GetUserDLCCmd = &cobra.Command{
	Use:   "getUserDLC",
	Short: "Get user DLC",
	Long:  `Get user DLC`,
	RunE: func(cmd *cobra.Command, args []string) error {
		dlcService := &platform.DLCService{
			Client:          factory.NewPlatformClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		userId, _ := cmd.Flags().GetString("userId")
		includeAllNamespaces, _ := cmd.Flags().GetBool("includeAllNamespaces")
		status, _ := cmd.Flags().GetString("status")
		type_, _ := cmd.Flags().GetString("type")
		input := &dlc.GetUserDLCParams{
			Namespace:            namespace,
			UserID:               userId,
			IncludeAllNamespaces: &includeAllNamespaces,
			Status:               &status,
			Type:                 &type_,
		}
		ok, errOK := dlcService.GetUserDLCShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetUserDLCCmd.Flags().String("namespace", "", "Namespace")
	_ = GetUserDLCCmd.MarkFlagRequired("namespace")
	GetUserDLCCmd.Flags().String("userId", "", "User id")
	_ = GetUserDLCCmd.MarkFlagRequired("userId")
	GetUserDLCCmd.Flags().Bool("includeAllNamespaces", false, "Include all namespaces")
	GetUserDLCCmd.Flags().String("status", "", "Status")
	GetUserDLCCmd.Flags().String("type", "", "Type")
}
