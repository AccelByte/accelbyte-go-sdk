// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package namespace

import (
	namespace_ "github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/namespace"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// PublicGetNamespacesCmd represents the PublicGetNamespaces command
var PublicGetNamespacesCmd = &cobra.Command{
	Use:   "publicGetNamespaces",
	Short: "Public get namespaces",
	Long:  `Public get namespaces`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespaceService := &basic.NamespaceService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		activeOnly, _ := cmd.Flags().GetBool("activeOnly")
		input := &namespace_.PublicGetNamespacesParams{
			ActiveOnly: &activeOnly,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := namespaceService.PublicGetNamespaces(input)
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
	PublicGetNamespacesCmd.Flags().BoolP("activeOnly", "", false, "Active only")
}
