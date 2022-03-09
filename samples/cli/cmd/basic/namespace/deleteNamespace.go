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

// DeleteNamespaceCmd represents the DeleteNamespace command
var DeleteNamespaceCmd = &cobra.Command{
	Use:   "deleteNamespace",
	Short: "Delete namespace",
	Long:  `Delete namespace`,
	RunE: func(cmd *cobra.Command, args []string) error {
		namespaceService := &basic.NamespaceService{
			Client:          factory.NewBasicClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &namespace_.DeleteNamespaceParams{
			Namespace: namespace,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := namespaceService.DeleteNamespace(input)
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
	DeleteNamespaceCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = DeleteNamespaceCmd.MarkFlagRequired("namespace")
}
