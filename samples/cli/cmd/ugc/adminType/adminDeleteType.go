// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminType

import (
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_type"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminDeleteTypeCmd represents the AdminDeleteType command
var AdminDeleteTypeCmd = &cobra.Command{
	Use:   "adminDeleteType",
	Short: "Admin delete type",
	Long:  `Admin delete type`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminTypeService := &ugc.AdminTypeService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		typeId, _ := cmd.Flags().GetString("typeId")
		input := &admin_type.AdminDeleteTypeParams{
			Namespace: namespace,
			TypeID:    typeId,
		}
		errInput := adminTypeService.AdminDeleteTypeShort(input, nil)
		if errInput != nil {
			logrus.Error(errInput)

			return errInput
		}

		return nil
	},
}

func init() {
	AdminDeleteTypeCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminDeleteTypeCmd.MarkFlagRequired("namespace")
	AdminDeleteTypeCmd.Flags().StringP("typeId", "", "", "Type id")
	_ = AdminDeleteTypeCmd.MarkFlagRequired("typeId")
}
