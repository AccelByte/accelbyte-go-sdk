// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package publicType

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_type"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// getTypeCmd represents the getType command
var getTypeCmd = &cobra.Command{
	Use:   "getType",
	Short: "Get type",
	Long:  `Get type`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicTypeService := &ugc.PublicTypeService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetString("limit")
		offset, _ := cmd.Flags().GetString("offset")
		input := &public_type.GetTypeParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := publicTypeService.GetType(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(getTypeCmd)
	getTypeCmd.Flags().StringP("namespace", "ne", " ", "Namespace")
	_ = getTypeCmd.MarkFlagRequired("namespace")
	getTypeCmd.Flags().StringP("limit", "lt", "20", "Limit")
	getTypeCmd.Flags().StringP("offset", "ot", "0", "Offset")
}
