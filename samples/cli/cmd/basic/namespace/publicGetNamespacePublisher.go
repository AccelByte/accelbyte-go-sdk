// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package namespace

import (
	namespace_ "github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/namespace"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/basic"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// publicGetNamespacePublisherCmd represents the publicGetNamespacePublisher command
var publicGetNamespacePublisherCmd = &cobra.Command{
	Use:   "publicGetNamespacePublisher",
	Short: "Public get namespace publisher",
	Long:  `Public get namespace publisher`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespaceService := &basic.NamespaceService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &namespace_.PublicGetNamespacePublisherParams{
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := namespaceService.PublicGetNamespacePublisher(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(publicGetNamespacePublisherCmd)
	publicGetNamespacePublisherCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = publicGetNamespacePublisherCmd.MarkFlagRequired("namespace")
}
