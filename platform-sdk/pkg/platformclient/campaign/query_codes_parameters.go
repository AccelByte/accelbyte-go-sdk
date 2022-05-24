// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package campaign

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewQueryCodesParams creates a new QueryCodesParams object
// with the default values initialized.
func NewQueryCodesParams() *QueryCodesParams {
	var (
		activeOnlyDefault = bool(true)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
	)
	return &QueryCodesParams{
		ActiveOnly: &activeOnlyDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryCodesParamsWithTimeout creates a new QueryCodesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryCodesParamsWithTimeout(timeout time.Duration) *QueryCodesParams {
	var (
		activeOnlyDefault = bool(true)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
	)
	return &QueryCodesParams{
		ActiveOnly: &activeOnlyDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryCodesParamsWithContext creates a new QueryCodesParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryCodesParamsWithContext(ctx context.Context) *QueryCodesParams {
	var (
		activeOnlyDefault = bool(true)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
	)
	return &QueryCodesParams{
		ActiveOnly: &activeOnlyDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,

		Context: ctx,
	}
}

// NewQueryCodesParamsWithHTTPClient creates a new QueryCodesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryCodesParamsWithHTTPClient(client *http.Client) *QueryCodesParams {
	var (
		activeOnlyDefault = bool(true)
		limitDefault      = int32(20)
		offsetDefault     = int32(0)
	)
	return &QueryCodesParams{
		ActiveOnly: &activeOnlyDefault,
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QueryCodesParams contains all the parameters to send to the API endpoint
for the query codes operation typically these are written to a http.Request
*/
type QueryCodesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ActiveOnly*/
	ActiveOnly *bool
	/*BatchNo*/
	BatchNo *int32
	/*CampaignID*/
	CampaignID string
	/*Code*/
	Code *string
	/*Limit*/
	Limit *int32
	/*Namespace*/
	Namespace string
	/*Offset*/
	Offset *int32

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the query codes params
func (o *QueryCodesParams) WithTimeout(timeout time.Duration) *QueryCodesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query codes params
func (o *QueryCodesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query codes params
func (o *QueryCodesParams) WithContext(ctx context.Context) *QueryCodesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query codes params
func (o *QueryCodesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query codes params
func (o *QueryCodesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query codes params
func (o *QueryCodesParams) WithHTTPClient(client *http.Client) *QueryCodesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query codes params
func (o *QueryCodesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query codes params
func (o *QueryCodesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithActiveOnly adds the activeOnly to the query codes params
func (o *QueryCodesParams) WithActiveOnly(activeOnly *bool) *QueryCodesParams {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the query codes params
func (o *QueryCodesParams) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WithBatchNo adds the batchNo to the query codes params
func (o *QueryCodesParams) WithBatchNo(batchNo *int32) *QueryCodesParams {
	o.SetBatchNo(batchNo)
	return o
}

// SetBatchNo adds the batchNo to the query codes params
func (o *QueryCodesParams) SetBatchNo(batchNo *int32) {
	o.BatchNo = batchNo
}

// WithCampaignID adds the campaignID to the query codes params
func (o *QueryCodesParams) WithCampaignID(campaignID string) *QueryCodesParams {
	o.SetCampaignID(campaignID)
	return o
}

// SetCampaignID adds the campaignId to the query codes params
func (o *QueryCodesParams) SetCampaignID(campaignID string) {
	o.CampaignID = campaignID
}

// WithCode adds the code to the query codes params
func (o *QueryCodesParams) WithCode(code *string) *QueryCodesParams {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the query codes params
func (o *QueryCodesParams) SetCode(code *string) {
	o.Code = code
}

// WithLimit adds the limit to the query codes params
func (o *QueryCodesParams) WithLimit(limit *int32) *QueryCodesParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query codes params
func (o *QueryCodesParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithNamespace adds the namespace to the query codes params
func (o *QueryCodesParams) WithNamespace(namespace string) *QueryCodesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query codes params
func (o *QueryCodesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithOffset adds the offset to the query codes params
func (o *QueryCodesParams) WithOffset(offset *int32) *QueryCodesParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query codes params
func (o *QueryCodesParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *QueryCodesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.ActiveOnly != nil {

		// query param activeOnly
		var qrActiveOnly bool
		if o.ActiveOnly != nil {
			qrActiveOnly = *o.ActiveOnly
		}
		qActiveOnly := swag.FormatBool(qrActiveOnly)
		if qActiveOnly != "" {
			if err := r.SetQueryParam("activeOnly", qActiveOnly); err != nil {
				return err
			}
		}

	}

	if o.BatchNo != nil {

		// query param batchNo
		var qrBatchNo int32
		if o.BatchNo != nil {
			qrBatchNo = *o.BatchNo
		}
		qBatchNo := swag.FormatInt32(qrBatchNo)
		if qBatchNo != "" {
			if err := r.SetQueryParam("batchNo", qBatchNo); err != nil {
				return err
			}
		}

	}

	// path param campaignId
	if err := r.SetPathParam("campaignId", o.CampaignID); err != nil {
		return err
	}

	if o.Code != nil {

		// query param code
		var qrCode string
		if o.Code != nil {
			qrCode = *o.Code
		}
		qCode := qrCode
		if qCode != "" {
			if err := r.SetQueryParam("code", qCode); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int32
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt32(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int32
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt32(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
