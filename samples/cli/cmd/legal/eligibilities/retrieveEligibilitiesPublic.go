// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated. DO NOT EDIT.

package eligibilities

import (
	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclient/eligibilities"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/factory"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service/legal"
	"github.com/AccelByte/sample-apps/pkg/repository"
	"github.com/sirupsen/logrus"
	"github.com/spf13/cobra"
)

// RetrieveEligibilitiesPublicCmd represents the RetrieveEligibilitiesPublic command
var RetrieveEligibilitiesPublicCmd = &cobra.Command{
	Use:   "retrieveEligibilitiesPublic",
	Short: "Retrieve eligibilities public",
	Long:  `Retrieve eligibilities public`,
	RunE: func(cmd *cobra.Command, args []string) error {
		eligibilitiesService := &legal.EligibilitiesService{
			Client:          factory.NewLegalClient(&repository.ConfigRepositoryImpl{}),
			TokenRepository: &repository.TokenRepositoryImpl{},
		}
		namespace, _ := cmd.Flags().GetString("namespace")
		input := &eligibilities.RetrieveEligibilitiesPublicParams{
			Namespace: namespace,
		}
		ok, err := eligibilitiesService.RetrieveEligibilitiesPublicShort(input, nil)
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
	RetrieveEligibilitiesPublicCmd.Flags().StringP("namespace", "", "", "Namespace")
	_ = RetrieveEligibilitiesPublicCmd.MarkFlagRequired("namespace")
}
