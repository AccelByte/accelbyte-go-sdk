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

// GetGameNamespacesCmd represents the GetGameNamespaces command
var GetGameNamespacesCmd = &cobra.Command{
	Use:   "getGameNamespaces",
	Short: "Get game namespaces",
	Long:  `Get game namespaces`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespaceService := &basic.NamespaceService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		input := &namespace_.GetGameNamespacesParams{
			Namespace:  namespace,
			ActiveOnly: &activeOnly,
		}
		ok, err := namespaceService.GetGameNamespacesShort(input)
		if err != nil {
			logrus.Error(err)

			return err
		} else {
			logrus.Infof("Response CLI success: %+v", ok)
		}

		return nil
	},
}

func init() {
	GetGameNamespacesCmd.Flags().String("namespace", "", "Namespace")
	_ = GetGameNamespacesCmd.MarkFlagRequired("namespace")
	GetGameNamespacesCmd.Flags().Bool("activeOnly", false, "Active only")
}
