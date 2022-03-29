// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package publicType

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_type"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// GetTypeCmd represents the GetType command
var GetTypeCmd = &cobra.Command{
	Use:   "getType",
	Short: "Get type",
	Long:  `Get type`,
	RunE: func(cmd *cobra.Command, args []string) error {
		publicTypeService := &ugc.PublicTypeService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		limit, _ := cmd.Flags().GetInt64("limit")
		offset, _ := cmd.Flags().GetInt64("offset")
		input := &public_type.GetTypeParams{
			Namespace: namespace,
			Limit:     &limit,
			Offset:    &offset,
		}
		ok, err := publicTypeService.GetTypeShort(input)
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
	GetTypeCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = GetTypeCmd.MarkFlagRequired("namespace")
	GetTypeCmd.Flags().Int64P("limit", "", 20, "Limit")
	GetTypeCmd.Flags().Int64P("offset", "", 0, "Offset")
}
