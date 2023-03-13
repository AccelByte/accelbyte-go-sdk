// Copyright (c) 2023 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

package custom_sdk

import (
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// CustomSearchParams is the custom params
type CustomSearchParams struct {
	Cx   string
	Num  *int64
	Q    string
	Safe string

	Key string
}

func (o *CustomSearchParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {
	var res []error

	// query params
	if err := r.SetQueryParam("cx", o.Cx); err != nil {
		return err
	}
	if err := r.SetQueryParam("q", o.Q); err != nil {
		return err
	}
	if err := r.SetQueryParam("safe", o.Safe); err != nil {
		return err
	}
	if err := r.SetQueryParam("key", o.Key); err != nil {
		return err
	}

	if o.Num != nil {

		// query param limit
		var qrNum int64
		if o.Num != nil {
			qrNum = *o.Num
		}
		qLimit := swag.FormatInt64(qrNum)
		if qLimit != "" {
			if err := r.SetQueryParam("num", qLimit); err != nil {
				return err
			}
		}

	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
