// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package adminType

import (
	"encoding/json"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_type"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// AdminUpdateTypeCmd represents the AdminUpdateType command
var AdminUpdateTypeCmd = &cobra.Command{
	Use:   "adminUpdateType",
	Short: "Admin update type",
	Long:  `Admin update type`,
	RunE: func(cmd *cobra.Command, args []string) error {
		adminTypeService := &ugc.AdminTypeService{
			Client:          factory.NewUgcClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		bodyString := cmd.Flag("body").Value.String()
		var body *ugcclientmodels.ModelsCreateTypeRequest
		errBody := json.Unmarshal([]byte(bodyString), &body)
		if errBody != nil {
			return errBody
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		typeId, _ := cmd.Flags().GetString("typeId")
		input := &admin_type.AdminUpdateTypeParams{
			Body:      body,
			Namespace: namespace,
			TypeID:    typeId,
		}
		ok, err := adminTypeService.AdminUpdateTypeShort(input)
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
	AdminUpdateTypeCmd.Flags().StringP("body", "", "", "Body")
	_ = AdminUpdateTypeCmd.MarkFlagRequired("body")
	AdminUpdateTypeCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = AdminUpdateTypeCmd.MarkFlagRequired("namespace")
	AdminUpdateTypeCmd.Flags().StringP("typeId", "", "", "Type id")
	_ = AdminUpdateTypeCmd.MarkFlagRequired("typeId")
}
