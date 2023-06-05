// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package stat_configuration

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

// NewGetStatsParams creates a new GetStatsParams object
// with the default values initialized.
func NewGetStatsParams() *GetStatsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetStatsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetStatsParamsWithTimeout creates a new GetStatsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetStatsParamsWithTimeout(timeout time.Duration) *GetStatsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetStatsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewGetStatsParamsWithContext creates a new GetStatsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetStatsParamsWithContext(ctx context.Context) *GetStatsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetStatsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewGetStatsParamsWithHTTPClient creates a new GetStatsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetStatsParamsWithHTTPClient(client *http.Client) *GetStatsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &GetStatsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*GetStatsParams contains all the parameters to send to the API endpoint
for the get stats operation typically these are written to a http.Request
*/
type GetStatsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*CycleIds
	  comma separated cycleId

	*/
	CycleIds *string
	/*IsGlobal
	  flag to filter global statcode

	*/
	IsGlobal *bool
	/*IsPublic
	  flag to filter public/private statcode

	*/
	IsPublic *bool
	/*Limit*/
	Limit *int32
	/*Offset*/
	Offset *int32

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get stats params
func (o *GetStatsParams) WithTimeout(timeout time.Duration) *GetStatsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get stats params
func (o *GetStatsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get stats params
func (o *GetStatsParams) WithContext(ctx context.Context) *GetStatsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get stats params
func (o *GetStatsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get stats params
func (o *GetStatsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get stats params
func (o *GetStatsParams) WithHTTPClient(client *http.Client) *GetStatsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get stats params
func (o *GetStatsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get stats params
func (o *GetStatsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get stats params
func (o *GetStatsParams) WithNamespace(namespace string) *GetStatsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get stats params
func (o *GetStatsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithCycleIds adds the cycleIds to the get stats params
func (o *GetStatsParams) WithCycleIds(cycleIds *string) *GetStatsParams {
	o.SetCycleIds(cycleIds)
	return o
}

// SetCycleIds adds the cycleIds to the get stats params
func (o *GetStatsParams) SetCycleIds(cycleIds *string) {
	o.CycleIds = cycleIds
}

// WithIsGlobal adds the isGlobal to the get stats params
func (o *GetStatsParams) WithIsGlobal(isGlobal *bool) *GetStatsParams {
	o.SetIsGlobal(isGlobal)
	return o
}

// SetIsGlobal adds the isGlobal to the get stats params
func (o *GetStatsParams) SetIsGlobal(isGlobal *bool) {
	o.IsGlobal = isGlobal
}

// WithIsPublic adds the isPublic to the get stats params
func (o *GetStatsParams) WithIsPublic(isPublic *bool) *GetStatsParams {
	o.SetIsPublic(isPublic)
	return o
}

// SetIsPublic adds the isPublic to the get stats params
func (o *GetStatsParams) SetIsPublic(isPublic *bool) {
	o.IsPublic = isPublic
}

// WithLimit adds the limit to the get stats params
func (o *GetStatsParams) WithLimit(limit *int32) *GetStatsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get stats params
func (o *GetStatsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the get stats params
func (o *GetStatsParams) WithOffset(offset *int32) *GetStatsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get stats params
func (o *GetStatsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetStatsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.CycleIds != nil {

		// query param cycleIds
		var qrCycleIds string
		if o.CycleIds != nil {
			qrCycleIds = *o.CycleIds
		}
		qCycleIds := qrCycleIds
		if qCycleIds != "" {
			if err := r.SetQueryParam("cycleIds", qCycleIds); err != nil {
				return err
			}
		}

	}

	if o.IsGlobal != nil {

		// query param isGlobal
		var qrIsGlobal bool
		if o.IsGlobal != nil {
			qrIsGlobal = *o.IsGlobal
		}
		qIsGlobal := swag.FormatBool(qrIsGlobal)
		if qIsGlobal != "" {
			if err := r.SetQueryParam("isGlobal", qIsGlobal); err != nil {
				return err
			}
		}

	}

	if o.IsPublic != nil {

		// query param isPublic
		var qrIsPublic bool
		if o.IsPublic != nil {
			qrIsPublic = *o.IsPublic
		}
		qIsPublic := swag.FormatBool(qrIsPublic)
		if qIsPublic != "" {
			if err := r.SetQueryParam("isPublic", qIsPublic); err != nil {
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

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
