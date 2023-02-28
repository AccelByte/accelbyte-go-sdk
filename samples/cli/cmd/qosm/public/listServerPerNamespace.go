// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package public

import (
	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclient/public"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/qosm"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// ListServerPerNamespaceCmd represents the ListServerPerNamespace command
var ListServerPerNamespaceCmd = &cobra.Command{
	Use:   "listServerPerNamespace",
	Short: "List server per namespace",
	Long:  `List server per namespace`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicService := &qosm.PublicService{
			Client:          factory.NewQosmClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		status, _ := cmd.Flags().GetString("status")
		input := &public.ListServerPerNamespaceParams{
			Namespace: namespace,
			Status:    &status,
		}
		ok, errOK := publicService.ListServerPerNamespaceShort(input)
		if errOK != nil {
			logrus.Error(errOK)

			return errOK
		}

		logrus.Infof("Response CLI success: %+v", ok)

		return nil
	},
}

func init() {
	ListServerPerNamespaceCmd.Flags().String("namespace", "", "Namespace")
	_ = ListServerPerNamespaceCmd.MarkFlagRequired("namespace")
	ListServerPerNamespaceCmd.Flags().String("status", "", "Status")
}
