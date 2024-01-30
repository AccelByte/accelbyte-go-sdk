// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package namespace

import (
	namespace_ "github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/namespace"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetChildNamespacesCmd represents the GetChildNamespaces command
var GetChildNamespacesCmd = &cobra.Command{
	Use:   "getChildNamespaces",
	Short: "Get child namespaces",
	Long:  `Get child namespaces`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespaceService := &basic.NamespaceService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		input := &namespace_.GetChildNamespacesParams{
			Namespace:  namespace,
			ActiveOnly: &activeOnly,
		}
		ok, errOK := namespaceService.GetChildNamespacesShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	GetChildNamespacesCmd.Flags().String("namespace", "", "Namespace")
	_ = GetChildNamespacesCmd.MarkFlagRequired("namespace")
	GetChildNamespacesCmd.Flags().Bool("activeOnly", false, "Active only")
}
