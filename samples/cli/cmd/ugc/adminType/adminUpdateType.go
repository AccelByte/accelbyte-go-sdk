// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package cmd

import (
	"encoding/json"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/ugc"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_type"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
	"github.com/AccelByte/sample-apps/cmd"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// adminUpdateTypeCmd represents the adminUpdateType command
var adminUpdateTypeCmd = &cobra.Command{
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
		//lint:ignore SA1019 Ignore the deprecation warnings
		ok, err := adminTypeService.AdminUpdateType(input)
		logrus.Infof("Response %v", ok)
		if err != nil {
			logrus.Error(err)
			return err
		}
		return nil
	},
}

func init() {
	cmd.RootCmd.AddCommand(adminUpdateTypeCmd)
	adminUpdateTypeCmd.Flags().StringP("body", "b", " ", "Body")
	_ = adminUpdateTypeCmd.MarkFlagRequired("body")
	adminUpdateTypeCmd.Flags().StringP("namespace", "n", " ", "Namespace")
	_ = adminUpdateTypeCmd.MarkFlagRequired("namespace")
	adminUpdateTypeCmd.Flags().StringP("typeId", "t", " ", "Type id")
	_ = adminUpdateTypeCmd.MarkFlagRequired("typeId")
}
